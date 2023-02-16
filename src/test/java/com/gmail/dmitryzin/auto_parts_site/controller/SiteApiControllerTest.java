package com.gmail.dmitryzin.auto_parts_site.controller;

import com.gmail.dmitryzin.auto_parts_site.dto.CarPartDto;
import com.gmail.dmitryzin.auto_parts_site.service.SiteCarPartApiService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.when;

class SiteApiControllerTest {

    @Test
    void getCarPartPriceTest() {
        SiteCarPartApiService siteCarPartApiService = Mockito.mock(SiteCarPartApiService.class);
        SiteApiController siteApiController = new SiteApiController(siteCarPartApiService);
        BigDecimal price = new BigDecimal(1_000.0);
        CarPartDto carPartDto = new CarPartDto(1, "sku", "partName", price, 4.00, "brandName", "Russia", "Lada", "2110", 1990, 2030, "2.0 Turbo", "", 10, "description", "vendoCode", "images", "color", "material", "groupName");
        when(siteApiController.getCarPart(1)).thenReturn(carPartDto);
        assertEquals(price, siteApiController.getCarPart(1).getPrice());

    }
}