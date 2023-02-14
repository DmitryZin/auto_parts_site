package com.gmail.dmitryzin.auto_parts_site.mapper;

import com.gmail.dmitryzin.auto_parts_site.dto.CarPartDto;
import com.gmail.dmitryzin.auto_parts_site.dto.PreviewCarPartDto;

import java.util.ArrayList;
import java.util.List;

public class PreviewCarPartMapper {
    public PreviewCarPartDto mapPreviewCarPart(CarPartDto carPartDto){
        return new PreviewCarPartDto(carPartDto.getId(), carPartDto.getSku(), carPartDto.getPartName(),
                carPartDto.getPrice(), carPartDto.getRating(), carPartDto.getBrandName(), carPartDto.getCountryName());
    }

    public List<PreviewCarPartDto> mapPreviewCarPartList(List<CarPartDto> carPartDtoList){
        List<PreviewCarPartDto> mapResult = new ArrayList<>();
        for(CarPartDto carPartDto: carPartDtoList){
            mapResult.add(mapPreviewCarPart(carPartDto));
        }
        return mapResult;
    }
}
