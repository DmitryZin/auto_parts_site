package com.gmail.dmitryzin.auto_parts_site.service;

import com.gmail.dmitryzin.auto_parts_site.dto.CarPartDto;
import com.gmail.dmitryzin.auto_parts_site.dto.Paginator;
import com.gmail.dmitryzin.auto_parts_site.dto.PreviewCarPartDto;
import com.gmail.dmitryzin.auto_parts_site.exception.NotFoundException;
import com.gmail.dmitryzin.auto_parts_site.mapper.PreviewCarPartMapper;
import com.gmail.dmitryzin.auto_parts_site.repository.CarPartRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Slf4j
@Service
public class SiteCarPartApiService implements SiteApiService{

    private final CarPartRepository carPartRepository;
    @Override
    public CarPartDto getCarPart(Integer part_id) {
        return carPartRepository.getCarPartById(part_id).orElseThrow(NotFoundException::new);
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartList(Paginator paginator) {
        return PreviewCarPartMapper.mapPreviewCarPartList(carPartRepository.getCarPartList(paginator.getPageNum(), paginator.getPageCount()).orElseThrow(NotFoundException::new));
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListByNumber(String number, Paginator paginator) {
        return PreviewCarPartMapper.mapPreviewCarPartList(carPartRepository.getCarPartListByNumber(paginator.getPageNum(), paginator.getPageCount(), number).orElseThrow(NotFoundException::new));
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByBrand(Integer brand_id, Paginator paginator) {
        return PreviewCarPartMapper.mapPreviewCarPartList(carPartRepository.getCarPartListByBrand(paginator.getPageNum(), paginator.getPageCount(), brand_id).orElseThrow(NotFoundException::new));
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByModel(Integer model_id, Paginator paginator) {
        return PreviewCarPartMapper.mapPreviewCarPartList(carPartRepository.getCarPartListByModel(paginator.getPageNum(), paginator.getPageCount(), model_id).orElseThrow(NotFoundException::new));
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByCar(Integer car_id, Paginator paginator) {
        return PreviewCarPartMapper.mapPreviewCarPartList(carPartRepository.getCarPartListByCar(paginator.getPageNum(), paginator.getPageCount(), car_id).orElseThrow(NotFoundException::new));
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByEngine(Integer engine_id, Paginator paginator) {
        return PreviewCarPartMapper.mapPreviewCarPartList(carPartRepository.getCarPartListByEngine(paginator.getPageNum(), paginator.getPageCount(), engine_id).orElseThrow(NotFoundException::new));
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartAnalogList(Paginator paginator, Integer carPartId){
        return PreviewCarPartMapper.mapPreviewCarPartList(carPartRepository.getCarPartAnalogList(paginator.getPageNum(), paginator.getPageCount(), carPartId).orElseThrow(NotFoundException::new));
    };
}
