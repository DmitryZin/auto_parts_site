package com.gmail.dmitryzin.auto_parts_site.service;

import com.gmail.dmitryzin.auto_parts_site.dto.CarPartDto;

public interface SiteApiPart {
    public CarPartDto getCarPart(Integer part_id);
}
