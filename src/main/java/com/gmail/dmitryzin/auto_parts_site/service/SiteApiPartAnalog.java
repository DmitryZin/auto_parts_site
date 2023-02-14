package com.gmail.dmitryzin.auto_parts_site.service;

import com.gmail.dmitryzin.auto_parts_site.dto.Paginator;
import com.gmail.dmitryzin.auto_parts_site.dto.PreviewCarPartDto;

import java.util.List;

public interface SiteApiPartAnalog {
    public List<PreviewCarPartDto> getPreviewCarPartAnalogList(Paginator paginator, Integer carPartId);
}
