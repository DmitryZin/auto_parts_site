package com.gmail.dmitryzin.auto_parts_site.dto;

import lombok.Data;

import java.math.BigDecimal;
@Data
public class CarPartDto {
    private final Integer id;
    private final String sku;
    private final String partName;
    private final BigDecimal price;
    private final Double rating;
    private final String brandName;
    private final String countryName;
    private final String carBrand;
    private final String carModel;
    private final Integer manufactureYearStart;
    private final Integer manufactureYearEnd;
    private final String engineName;
    private final String keyFeatures;
    private final Integer quantityInStock;
    private final String description;
    private final String vendorCode;
    private final String images;
    private final String colors;
    private final String materials;
    private final String groupName;
}
