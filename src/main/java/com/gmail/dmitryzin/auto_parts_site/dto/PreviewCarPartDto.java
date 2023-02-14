package com.gmail.dmitryzin.auto_parts_site.dto;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class PreviewCarPartDto {
    private final Integer id;
    private final String sku;
    private final String partName;
    private final BigDecimal price;
    private final Double rating;
    private final String brandName;
    private final String countryName;
}