package com.gmail.dmitryzin.auto_parts_site.service;

import com.gmail.dmitryzin.auto_parts_site.dto.CarPartDto;
import com.gmail.dmitryzin.auto_parts_site.dto.Paginator;
import com.gmail.dmitryzin.auto_parts_site.dto.PreviewCarPartDto;
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
        return null;
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartList(Paginator paginator) {
        return null;
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListByNumber(String number, Paginator paginator) {
        return null;
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByBrand(Integer brand_id, Paginator paginator) {
        return null;
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByModel(Integer model_id, Paginator paginator) {
        return null;
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByCar(Integer car_id, Paginator paginator) {
        return null;
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByEngine(Integer engine_id, Paginator paginator) {
        return null;
    }

    @Override
    public List<PreviewCarPartDto> getPreviewCarPartAnalogList(Paginator paginator, Integer carPartId){
        return  null;
    };
}
