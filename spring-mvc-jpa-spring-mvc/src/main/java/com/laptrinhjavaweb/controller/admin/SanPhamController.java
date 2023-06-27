package com.laptrinhjavaweb.controller.admin;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.repository.SanPhamRepository;
import com.laptrinhjavaweb.service.SanPhamService;

@Controller(value = "sanPhamControllerOfAdmin")
public class SanPhamController {
	@Autowired
	SanPhamService sanPhamService;

	@RequestMapping(value = "/home/dsSanPham", method = RequestMethod.GET)
	public ModelAndView listSp() {
		ModelAndView mav = new ModelAndView("admin/danhsachsp");
		List<SanPhamEntity> listSp = sanPhamService.findAll();
		mav.addObject("dssp", listSp);
		return mav;
	}

	@RequestMapping(value = "/home/themsp", method = RequestMethod.GET)
	public String addSp(Model model) {
//		ModelAndView mav = new ModelAndView("admin/themsp");
//		mav.addObject("sanpham", new SanPhamEntity());
		model.addAttribute("sanpham", new SanPhamEntity());
		return "admin/themsp";
	}

	@RequestMapping(value = "/home/themsp", method = RequestMethod.POST)
	public String doAddSp(@RequestParam("fileImg") MultipartFile fileimg, @RequestParam("hang") String hang,
			@RequestParam("model") String model, @RequestParam("price") double price) {
		try {
			String fileName = fileimg.getOriginalFilename();
			File saveFile = new File("/Users/anhnguyen/desktop/Tmp/"+fileName);
			fileimg.transferTo(saveFile);
			SanPhamEntity sp = new SanPhamEntity();
			sp.setHang(hang);
			sp.setModel(model);
			sp.setPrice(price);
			sp.setImgUrl(fileName);
			sanPhamService.saveSp(sp);
		}catch(Exception e) {
			
		}
//		ModelAndView mav = new ModelAndView("redirect:/home/dsSanPham");
//		sanPhamRepository.save(sanpham);
		return "redirect:/home/dsSanPham";
	}
	@RequestMapping(value="/home/deleteSp")
	public String deleteSp(@Param("id") long id) {
		sanPhamService.deleteSp(id);
		return "redirect:/home/dsSanPham";
	}
}
