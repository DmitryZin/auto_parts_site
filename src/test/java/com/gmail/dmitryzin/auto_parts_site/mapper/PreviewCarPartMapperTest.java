package com.gmail.dmitryzin.auto_parts_site.mapper;

import com.gmail.dmitryzin.auto_parts_site.dto.CarPartDto;
import com.gmail.dmitryzin.auto_parts_site.dto.PreviewCarPartDto;
import org.junit.jupiter.api.Test;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;

class PreviewCarPartMapperTest {
    @Test
    void mapPreviewCarPartTest(){
        BigDecimal price = new BigDecimal(1_000.0);
        CarPartDto carPartDto = new CarPartDto(1, "sku", "partName", price, 4.00, "brandName", "Russia", "Lada", "2110", 1990, 2030, "2.0 Turbo", "", 10, "description", "vendoCode", "images", "color", "material", "groupName");
        PreviewCarPartDto previewCarPartDto = PreviewCarPartMapper.mapPreviewCarPart(carPartDto);
        assertEquals(previewCarPartDto.getPartName(), "partName");
        assertEquals(previewCarPartDto.getId(), 1);
        assertEquals(previewCarPartDto.getRating(), 4.0);;
        assertEquals(previewCarPartDto.getCountryName(), "Russia");
        assertEquals(previewCarPartDto.getBrandName(), "brandName");
        assertEquals(previewCarPartDto.getPrice(), price);
        assertEquals(previewCarPartDto.getSku(), "sku");
    }
}