package com.gmail.dmitryzin.auto_parts_site.controller;

import com.gmail.dmitryzin.auto_parts_site.dto.CarPartDto;
import com.gmail.dmitryzin.auto_parts_site.dto.Paginator;
import com.gmail.dmitryzin.auto_parts_site.dto.PreviewCarPartDto;
import com.gmail.dmitryzin.auto_parts_site.service.SiteApiService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/v1/")
public class SiteApiController {
    private final SiteApiService siteApiService;

    //получить список всех запчастей
    @GetMapping("parts")
    public List<PreviewCarPartDto> getPreviewCarPartList(Paginator paginator){
        return siteApiService.getPreviewCarPartList(paginator);
    }
    //получить список запчастей по номеру
    @GetMapping("parts/byNumber/{number}")
    public List<PreviewCarPartDto> getPreviewCarPartListByNumber(@PathVariable String number, Paginator paginator){
        return siteApiService.getPreviewCarPartListByNumber(number, paginator);
    }
    //получить список запчастей для автомобиля
    @GetMapping("parts/forAuto/brand/{brand_id}")
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByBrand(@PathVariable Integer brand_id, Paginator paginator){
        return siteApiService.getPreviewCarPartListForAutoByBrand(brand_id, paginator);
    }

    @GetMapping("parts/forAuto/model/{model_id}")
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByModel(@PathVariable Integer model_id, Paginator paginator){
        return siteApiService.getPreviewCarPartListForAutoByModel(model_id, paginator);
    }

    @GetMapping("parts/forAuto/car/{car_id}")
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByCar(@PathVariable Integer car_id, Paginator paginator){
        return siteApiService.getPreviewCarPartListForAutoByCar(car_id, paginator);
    }

    @GetMapping("parts/forAuto/engine/{engine_id}")
    public List<PreviewCarPartDto> getPreviewCarPartListForAutoByEngine(@PathVariable Integer engine_id, Paginator paginator){
        return siteApiService.getPreviewCarPartListForAutoByEngine(engine_id, paginator);
    }
    //получить полные сведения о зап.части
    @GetMapping("parts/part/{part_id}")
    public CarPartDto getCarPart(@PathVariable Integer part_id){
        return siteApiService.getCarPart(part_id);
    }

    //получить список аналогов
    @GetMapping("analogs/{part_id}")
    public List<PreviewCarPartDto> getPreviewCarPartAnalogList(@PathVariable Integer part_id, Paginator paginator){
        return siteApiService.getPreviewCarPartAnalogList(paginator, part_id);
    }
}
