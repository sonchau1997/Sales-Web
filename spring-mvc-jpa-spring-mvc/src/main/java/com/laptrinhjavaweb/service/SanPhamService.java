package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.SanPhamEntity;
import com.laptrinhjavaweb.repository.SanPhamRepository;

@Service
public class SanPhamService {
	@Autowired
	SanPhamRepository sanPhamRepository;

	public List<SanPhamEntity> findAll() {
		return sanPhamRepository.findAll();
	}
	public void saveSp(SanPhamEntity sp) {
		sanPhamRepository.save(sp);
	}
	public void deleteSp(long id) {
		sanPhamRepository.delete(id);
	}
}
