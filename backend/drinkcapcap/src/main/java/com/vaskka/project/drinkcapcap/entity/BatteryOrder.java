package com.vaskka.project.drinkcapcap.entity;


import com.fasterxml.jackson.annotation.JsonFormat;
import com.vaskka.project.drinkcapcap.entity.base.BaseEntity;

import javax.persistence.*;
import java.sql.Date;
import java.sql.Timestamp;


@Table(name = "battery_order")
@Entity
public class BatteryOrder extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @Column(name = "create_time")
    private Timestamp createTime;

    private Integer battery_num;

    private String openid;

    private Boolean done;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Timestamp done_time;

    public BatteryOrder() {
    }

    public BatteryOrder(Timestamp create_time, Integer battery_num, String openid, Boolean done, Timestamp done_time) {
        this.createTime = create_time;
        this.battery_num = battery_num;
        this.openid = openid;
        this.done = done;
        this.done_time = done_time;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp create_time) {
        this.createTime = create_time;
    }

    public Integer getBattery_num() {
        return battery_num;
    }

    public void setBattery_num(Integer battery_num) {
        this.battery_num = battery_num;
    }

    public String getOpenid() {
        return openid;
    }

    public void setOpenid(String openid) {
        this.openid = openid;
    }

    public Boolean getDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }

    public Timestamp getDone_time() {
        return done_time;
    }

    public void setDone_time(Timestamp done_time) {
        this.done_time = done_time;
    }
}