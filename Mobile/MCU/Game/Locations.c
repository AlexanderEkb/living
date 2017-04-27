#include "Game.h"
#include "ChrScripts.h"
#include "Graphics.h"
#include "LocScripts.h"
#include "Locations.h"

#define NULL ((void *)0)

const MotionPhase_t ReptileData0_Extra[2] = {{0x18, 64, 0}, {0x18, -64, 0}};
const CustomData_t ReptileData0 = {2, 0, 1, 2, 3, (void *)&SimpleScript, 0x0f10,
        2, (void *)&ReptileData0_Extra};

const MotionPhase_t ReptileData2_Extra[2] = {{0x1C, 64, 0}, {0x1C, -64, 0}};
const CustomData_t ReptileData2 = {2, 0, 1, 2, 3, (void *)&SimpleScript, 0x0f10,
        2, (void *)&ReptileData2_Extra};

const MotionPhase_t ReptileData3_Extra[2] = {{0x28, 64, 0}, {0x28, -64, 0}};
const CustomData_t ReptileData3 = {2, 0, 1, 2, 3, (void *)&SimpleScript, 0x0f10,
        2, (void *)&ReptileData3_Extra};

const MotionPhase_t ReptileData4_Extra[2] = {{0x28, -64, 0}, {0x28, 64, 0}};
const CustomData_t ReptileData4 = {2, 0, 1, 2, 3, (void *)&SimpleScript, 0x0f10,
        2, (void *)&ReptileData4_Extra};

const MotionPhase_t ReptileData5_Extra[2] = {{0x1C, -64, 0}, {0x1C, 64, 0}};
const CustomData_t ReptileData5 = {2, 0, 1, 2, 3, (void *)&SimpleScript, 0x0f10,
        2, (void *)&ReptileData5_Extra};

const MotionPhase_t SpiderData_Extra = {0x64, 0, 0};
const CustomData_t SpiderData = {2, 0, 1, 0, 1, (void *)&SimpleScript, 0x0f0b,
        1, (void *)&SpiderData_Extra};

const LocationItem_t LocationItem00_00 = {0x80, 0x07, 0x04, 0x0300, 0x2400, NULL};
const LocationItem_t LocationItem00_01 = {0x01, 0x0C, 0x00, 0x01A0, 0x0300, NULL};
const LocationItem_t LocationItem00_02 = {0x00, 0x2F, 0x00, 0x1100, 0x0700, NULL};
const LocationItem_t LocationItem01_00 = {0x00, 0x1A, 0x00, 0x0560, 0x1D00, (void *)&ReptileData0};
const LocationItem_t LocationItem01_01 = {0x00, 0x30, 0x02, 0x1000, 0x2000, NULL};
const LocationItem_t LocationItem01_02 = {0x01, 0x0C, 0x00, 0x0140, 0x2200, NULL};
const LocationItem_t LocationItem02_00 = {0x00, 0x2F, 0x02, 0x1000, 0x2000, NULL};
const LocationItem_t LocationItem03_00 = {0x01, 0x0C, 0x02, 0x01A0, 0x2300, NULL};
const LocationItem_t LocationItem03_01 = {0x00, 0x30, 0x00, 0x0E00, 0x0500, NULL};
const LocationItem_t LocationItem04_00 = {0x80, 0x2D, 0x00, 0x0F40, 0x0000, NULL};
const LocationItem_t LocationItem04_01 = {0x00, 0x09, 0x00, 0x0F40, 0x0E00, NULL};
const LocationItem_t LocationItem04_02 = {0x00, 0x2B, 0x02, 0x1100, 0x1000, (void *)&ReptileData4};
const LocationItem_t LocationItem05_00 = {0x80, 0x2D, 0x04, 0x0F40, 0x2400, NULL};
      LocationItem_t LocationItem05_01 = {0x80, WATER, 0x00, 0x10A0, 0x1200, NULL};
      LocationItem_t LocationItem05_02 = {0x82, FOOD, 0x00, 0x1080, 0x2100, NULL};
const LocationItem_t LocationItem05_03 = {0x00, 0x2B, 0x00, 0x0600, 0x1F00, (void *)&ReptileData0};

const LocationItem_t LocationItem06_00 = {0x00, PLAYER, 0x00, 0x0F40, 0x0300, NULL};
const LocationItem_t LocationItem06_01 = {0x00, HUNGRYPLANT, 0x00, 0x0F40, 0x1F00, NULL};
const LocationItem_t LocationItem06_02 = {0x00, SNAKE, 0x00, 0x0600, 0x1D00, (void *)&ReptileData2};

const LocationItem_t LocationItem07_00 = {0x00, 0x1B, 0x02, 0x0740, 0x0740, (void *)&ReptileData5};
const LocationItem_t LocationItem07_01 = {0x00, 0x1A, 0x00, 0x1060, 0x1400, (void *)&ReptileData2};
const LocationItem_t LocationItem07_02 = {0x00, 0x1C, 0x00, 0x0400, 0x0C00, NULL};
      LocationItem_t LocationItem07_03 = {0x04, FOOD, 0x01, 0x0700, 0x0000, NULL};

const LocationItem_t LocationItem08_00 = {0x00, 0x1B, 0x00, 0x1120, 0x1D00, (void *)&ReptileData2};
const LocationItem_t LocationItem08_01 = {0x00, 0x30, 0x00, 0x1100, 0x0E00, NULL};
      LocationItem_t LocationItem08_02 = {0x94, GEM, 0x00, 0x0200, 0x0200, NULL};

const LocationItem_t LocationItem09_00 = {0x80, 0x2D, 0x04, 0x0D20, 0x2400, NULL};
const LocationItem_t LocationItem09_01 = {0x00, 0x1A, 0x00, 0x1060, 0x0800, (void *)&ReptileData3};
const LocationItem_t LocationItem09_02 = {0x00, 0x1C, 0x00, 0x0700, 0x0D00, NULL};
const LocationItem_t LocationItem0A_00 = {0x00, 0x1B, 0x00, 0x1120, 0x1B00, (void *)&ReptileData2};
const LocationItem_t LocationItem0A_01 = {0x00, 0x1A, 0x02, 0x0760, 0x0C00, (void *)&ReptileData4};
const LocationItem_t LocationItem0A_02 = {0x00, 0x1A, 0x00, 0x1060, 0x0600, (void *)&ReptileData3};
      LocationItem_t LocationItem0A_03 = {0x06, WATER, 0x01, 0x1020, 0x0500, NULL};
const LocationItem_t LocationItem0B_00 = {0x00, 0x1C, 0x00, 0x0600, 0x0A00, NULL};
const LocationItem_t LocationItem0B_01 = {0x00, 0x1C, 0x00, 0x0300, 0x1800, NULL};
const LocationItem_t LocationItem0B_02 = {0x00, 0x1B, 0x00, 0x1120, 0x0500, (void *)&ReptileData0};
const LocationItem_t LocationItem0B_03 = {0x00, 0x1A, 0x00, 0x1060, 0x1400, (void *)&ReptileData2};
const LocationItem_t LocationItem0C_00 = {0x80, 0x2D, 0x00, 0x0F20, 0x0000, NULL};
const LocationItem_t LocationItem0C_01 = {0x00, 0x1C, 0x00, 0x0900, 0x1000, NULL};
      LocationItem_t LocationItem0C_02 = {0x88, WATER, 0x00, 0x0840, 0x0600, NULL};
const LocationItem_t LocationItem0D_00 = {0x80, 0x2D, 0x00, 0x0640, 0x0000, NULL};
const LocationItem_t LocationItem0D_01 = {0x01, 0x0D, 0x02, 0x0540, 0x2000, NULL};
      LocationItem_t LocationItem0D_02 = {0x8A, FOOD, 0x00, 0x0300, 0x1000, NULL};
const LocationItem_t LocationItem0E_00 = {0x80, 0x2D, 0x04, 0x0620, 0x2400, NULL};
const LocationItem_t LocationItem0E_01 = {0x01, 0x0D, 0x00, 0x0640, 0x0E00, NULL};
const LocationItem_t LocationItem0F_00 = {0x80, 0x2D, 0x04, 0x0640, 0x2400, NULL};
const LocationItem_t LocationItem0F_01 = {0x01, 0x0D, 0x02, 0x0640, 0x1A00, NULL};
const LocationItem_t LocationItem0F_02 = {0x02, 0x0D, 0x00, 0x0640, 0x0500, NULL};
const LocationItem_t LocationItem10_00 = {0x01, 0x0D, 0x00, 0x0640, 0x1C00, NULL};
const LocationItem_t LocationItem10_01 = {0x02, 0x0D, 0x00, 0x0640, 0x0900, NULL};
      LocationItem_t LocationItem10_02 = {0x96, GEM, 0x00, 0x0600, 0x0600, NULL};
const LocationItem_t LocationItem11_00 = {0x80, 0x07, 0x00, 0x0700, 0x0200, NULL};
const LocationItem_t LocationItem11_01 = {0x01, 0x0C, 0x02, 0x01A0, 0x2300, NULL};
const LocationItem_t LocationItem11_02 = {0x02, 0x0C, 0x00, 0x08A0, 0x1400, NULL};
const LocationItem_t LocationItem12_00 = {0x80, 0x07, 0x00, 0x0300, 0x0100, NULL};
const LocationItem_t LocationItem12_01 = {0x01, 0x0C, 0x02, 0x08A0, 0x1700, NULL};
const LocationItem_t LocationItem12_02 = {0x00, 0x31, 0x00, 0x1100, 0x0500, NULL};
const LocationItem_t LocationItem13_00 = {0x01, 0x0F, 0x02, 0x0540, 0x1A00, NULL};
const LocationItem_t LocationItem13_01 = {0x02, 0x0F, 0x00, 0x0840, 0x0D00, NULL};
const LocationItem_t LocationItem13_02 = {0x03, 0x10, 0x00, 0x0FA0, 0x1500, NULL};
const LocationItem_t LocationItem14_00 = {0x80, 0x2D, 0x00, 0x0F40, 0x0000, NULL};
const LocationItem_t LocationItem14_01 = {0x01, 0x0E, 0x00, 0x0F80, 0x0600, NULL};
const LocationItem_t LocationItem14_02 = {0x02, 0x0F, 0x00, 0x0940, 0x1280, NULL};
const LocationItem_t LocationItem14_03 = {0x03, 0x11, 0x02, 0x0C80, 0x0F00, NULL};
const LocationItem_t LocationItem14_04 = {0x04, 0x10, 0x00, 0x0FA0, 0x2000, NULL};
const LocationItem_t LocationItem15_00 = {0x80, 0x2D, 0x00, 0x0F40, 0x0000, NULL};
const LocationItem_t LocationItem15_01 = {0x01, 0x0F, 0x00, 0x0540, 0x2000, NULL};
const LocationItem_t LocationItem15_02 = {0x02, 0x0E, 0x00, 0x0860, 0x0700, NULL};
const LocationItem_t LocationItem15_03 = {0x03, 0x10, 0x00, 0x0FA0, 0x1500, NULL};
      LocationItem_t LocationItem15_04 = {0x0C, FOOD, 0x01, 0x0E00, 0x0A00, NULL};
const LocationItem_t LocationItem16_00 = {0x01, 0x0F, 0x00, 0x0340, 0x1400, NULL};
const LocationItem_t LocationItem16_01 = {0x02, 0x0E, 0x00, 0x0B60, 0x0B00, NULL};
const LocationItem_t LocationItem16_02 = {0x03, 0x11, 0x02, 0x0C80, 0x1A00, NULL};
const LocationItem_t LocationItem16_03 = {0x04, 0x10, 0x02, 0x0FA0, 0x1300, NULL};
      LocationItem_t LocationItem16_04 = {0x0E, WATER, 0x01, 0x1060, 0x0400, NULL};
const LocationItem_t LocationItem17_00 = {0x01, 0x0E, 0x00, 0x0860, 0x0600, NULL};
const LocationItem_t LocationItem17_01 = {0x02, 0x0E, 0x00, 0x0860, 0x2000, NULL};
const LocationItem_t LocationItem17_02 = {0x03, 0x0F, 0x00, 0x0340, 0x1000, NULL};
const LocationItem_t LocationItem17_03 = {0x05, 0x11, 0x02, 0x0C60, 0x0900, NULL};
      LocationItem_t LocationItem17_04 = {0x98, GEM, 0x00, 0x0500, 0x1500, NULL};
const LocationItem_t LocationItem18_00 = {0x01, 0x0E, 0x00, 0x0F80, 0x0600, NULL};
const LocationItem_t LocationItem18_01 = {0x02, 0x10, 0x02, 0x0FA0, 0x1A00, NULL};
const LocationItem_t LocationItem19_00 = {0x00, 0x09, 0x00, 0x0F60, 0x2100, NULL};
const LocationItem_t LocationItem19_01 = {0x01, 0x10, 0x02, 0x0FA0, 0x1600, NULL};
const LocationItem_t LocationItem19_02 = {0x02, 0x0E, 0x00, 0x0F80, 0x0600, NULL};
const LocationItem_t LocationItem1A_00 = {0x80, 0x07, 0x00, 0x0300, 0x0200, NULL};
const LocationItem_t LocationItem1A_01 = {0x00, 0x31, 0x00, 0x10E0, 0x0500, NULL};
const LocationItem_t LocationItem1A_02 = {0x00, 0x09, 0x00, 0x0F60, 0x2200, NULL};
      LocationItem_t LocationItem1A_03 = {0x1E, WATER, 0x01, 0x1040, 0x1D00, NULL};
const LocationItem_t LocationItem1B_00 = {0x01, 0x0E, 0x00, 0x0F80, 0x0F00, NULL};
const LocationItem_t LocationItem1B_01 = {0x02, 0x0E, 0x02, 0x0D60, 0x1F00, NULL};
const LocationItem_t LocationItem1C_00 = {0x00, 0x00, 0x00, 0x0D40, 0x0000, NULL};
const LocationItem_t LocationItem1C_01 = {0x00, 0x23, 0x00, 0x0620, 0x1120, NULL};
const LocationItem_t LocationItem1D_00 = {0x01, 0x0A, 0x02, 0x0200, 0x0700, NULL};
const LocationItem_t LocationItem1D_01 = {0x02, 0x0A, 0x02, 0x0200, 0x1E00, NULL};
const LocationItem_t LocationItem1D_02 = {0x00, 0x26, 0x00, 0x0F40, 0x1F00, NULL};
const LocationItem_t LocationItem1E_00 = {0x01, 0x0F, 0x02, 0x0540, 0x2200, NULL};
const LocationItem_t LocationItem1E_01 = {0x02, 0x10, 0x02, 0x0C80, 0x1E00, NULL};
const LocationItem_t LocationItem1F_00 = {0x01, 0x0F, 0x00, 0x0540, 0x0300, NULL};
const LocationItem_t LocationItem1F_01 = {0x02, 0x10, 0x02, 0x0E80, 0x1A00, NULL};
const LocationItem_t LocationItem20_00 = {0x01, 0x0F, 0x02, 0x0940, 0x2000, NULL};
const LocationItem_t LocationItem20_01 = {0x02, 0x0E, 0x02, 0x0C60, 0x1700, NULL};
const LocationItem_t LocationItem21_00 = {0x01, 0x10, 0x00, 0x0D80, 0x0A00, NULL};
const LocationItem_t LocationItem21_01 = {0x02, 0x10, 0x00, 0x0D80, 0x1A00, NULL};
const LocationItem_t LocationItem21_02 = {0x03, 0x26, 0x00, 0x0940, 0x1F00, NULL};
const LocationItem_t LocationItem22_00 = {0x80, 0x2D, 0x04, 0x0920, 0x2400, NULL};
const LocationItem_t LocationItem22_01 = {0x00, 0x31, 0x00, 0x10C0, 0x0800, NULL};
const LocationItem_t LocationItem22_02 = {0x00, 0x31, 0x02, 0x10C0, 0x1C00, NULL};
      LocationItem_t LocationItem22_03 = {0x20, FOOD, 0x00, 0x1040, 0x0800, NULL};
const LocationItem_t LocationItem23_00 = {0x80, 0x2D, 0x04, 0x0920, 0x2400, NULL};
const LocationItem_t LocationItem24_00 = {0x80, 0x07, 0x00, 0x0200, 0x2300, NULL};
const LocationItem_t LocationItem24_01 = {0x00, 0x2B, 0x00, 0x1100, 0x1600, (void *)&ReptileData3};
const LocationItem_t LocationItem24_02 = {0x00, 0x09, 0x00, 0x0F40, 0x1A00, NULL};
const LocationItem_t LocationItem25_00 = {0x01, 0x1E, 0x00, 0x1040, 0x0B00, NULL};
const LocationItem_t LocationItem25_01 = {0x02, 0x1E, 0x02, 0x1040, 0x1C00, NULL};
const LocationItem_t LocationItem25_02 = {0x03, 0x1D, 0x02, 0x0440, 0x1800, NULL};
const LocationItem_t LocationItem26_00 = {0x01, 0x1E, 0x00, 0x1040, 0x1600, NULL};
const LocationItem_t LocationItem26_01 = {0x02, 0x1D, 0x02, 0x0440, 0x0500, NULL};
const LocationItem_t LocationItem26_02 = {0x03, 0x1D, 0x00, 0x0440, 0x1C00, NULL};
      LocationItem_t LocationItem26_03 = {0x9A, GEM, 0x00, 0x0A00, 0x1600, NULL};
const LocationItem_t LocationItem27_00 = {0x01, 0x1E, 0x00, 0x1040, 0x1000, NULL};
const LocationItem_t LocationItem27_01 = {0x02, 0x1D, 0x02, 0x0440, 0x1900, NULL};
      LocationItem_t LocationItem27_02 = {0x92, FOOD, 0x01, 0x0200, 0x0300, NULL};
const LocationItem_t LocationItem28_00 = {0x01, 0x1E, 0x00, 0x1040, 0x1200, NULL};
const LocationItem_t LocationItem28_01 = {0x02, 0x1D, 0x00, 0x0440, 0x1100, NULL};
const LocationItem_t LocationItem29_00 = {0x01, 0x1E, 0x00, 0x1040, 0x1200, NULL};
const LocationItem_t LocationItem29_01 = {0x02, 0x1D, 0x02, 0x0640, 0x2000, NULL};
      LocationItem_t LocationItem29_02 = {0x90, WATER, 0x00, 0x0740, 0x2500, NULL};
const LocationItem_t LocationItem2A_00 = {0x00, 0x09, 0x00, 0x0740, 0x2100, NULL};
const LocationItem_t LocationItem2A_01 = {0x00, 0x2F, 0x02, 0x1100, 0x1F00, NULL};
const LocationItem_t LocationItem2B_00 = {0x80, 0x07, 0x00, 0x0200, 0x1E00, NULL};
const LocationItem_t LocationItem2B_01 = {0x01, 0x0C, 0x02, 0x06A0, 0x1C00, NULL};
const LocationItem_t LocationItem2B_02 = {0x00, 0x09, 0x00, 0x0F60, 0x1100, NULL};
const LocationItem_t LocationItem2B_03 = {0x00, 0x09, 0x00, 0x0F40, 0x1C00, NULL};
      LocationItem_t LocationItem2B_04 = {0x22, WATER, 0x00, 0x0840, 0x2100, NULL};
const LocationItem_t LocationItem2C_00 = {0x00, 0x00, 0x00, 0x0000, 0x1900, NULL};
const LocationItem_t LocationItem2C_01 = {0x00, 0x1C, 0x00, 0x0E00, 0x1000, NULL};
const LocationItem_t LocationItem2C_02 = {0x00, 0x2C, 0x00, 0x0D00, 0x0800, NULL};
const LocationItem_t LocationItem2D_00 = {0x00, 0x1C, 0x00, 0x0500, 0x1700, NULL};
const LocationItem_t LocationItem2D_01 = {0x00, 0x2B, 0x00, 0x0AC0, 0x1F00, (void *)&ReptileData5};
const LocationItem_t LocationItem2D_02 = {0x00, 0x2C, 0x00, 0x0100, 0x1E00, NULL};
const LocationItem_t LocationItem2E_00 = {0x00, 0x1C, 0x00, 0x0A00, 0x1200, NULL};
const LocationItem_t LocationItem2E_01 = {0x00, 0x2C, 0x00, 0x0200, 0x0700, NULL};
const LocationItem_t LocationItem2E_02 = {0x00, 0x2C, 0x00, 0x0400, 0x1F00, NULL};
const LocationItem_t LocationItem2E_03 = {0x00, 0x2C, 0x00, 0x1100, 0x1E00, NULL};
const LocationItem_t LocationItem2F_00 = {0x00, 0x1C, 0x00, 0x0A00, 0x0A00, NULL};
const LocationItem_t LocationItem2F_01 = {0x00, 0x2C, 0x00, 0x0900, 0x1700, NULL};
const LocationItem_t LocationItem30_00 = {0x00, 0x1C, 0x00, 0x0700, 0x1900, NULL};
const LocationItem_t LocationItem30_01 = {0x00, 0x1A, 0x00, 0x0860, 0x0300, (void *)&ReptileData2};
const LocationItem_t LocationItem31_00 = {0x00, 0x0A, 0x02, 0x0200, 0x1200, NULL};
const LocationItem_t LocationItem31_01 = {0x00, 0x0B, 0x00, 0x0600, 0x1A00, NULL};
      LocationItem_t LocationItem31_02 = {0x24, FOOD, 0x01, 0x0500, 0x2100, NULL};
const LocationItem_t LocationItem32_00 = {0x00, 0x0A, 0x02, 0x0200, 0x0900, NULL};
const LocationItem_t LocationItem32_01 = {0x00, 0x0B, 0x00, 0x0A00, 0x1300, NULL};
const LocationItem_t LocationItem35_00 = {0x00, 0x00, 0x00, 0x0000, 0x1400, NULL};
const LocationItem_t LocationItem35_01 = {0x00, 0x30, 0x00, 0x0D00, 0x0700, NULL};
const LocationItem_t LocationItem36_00 = {0x00, 0x1C, 0x00, 0x0A00, 0x2200, NULL};
const LocationItem_t LocationItem36_01 = {0x00, 0x1C, 0x00, 0x0500, 0x1400, NULL};
const LocationItem_t LocationItem37_00 = {0x00, 0x00, 0x00, 0x0000, 0x1300, NULL};
const LocationItem_t LocationItem37_01 = {0x01, 0x0A, 0x02, 0x0400, 0x2000, NULL};
const LocationItem_t LocationItem37_02 = {0x02, 0x0B, 0x00, 0x0C00, 0x0C00, NULL};
const LocationItem_t LocationItem38_00 = {0x80, 0x2D, 0x04, 0x0F40, 0x2400, NULL};
const LocationItem_t LocationItem38_01 = {0x00, 0x31, 0x00, 0x10A0, 0x0800, NULL};
const LocationItem_t LocationItem39_00 = {0x00, 0x00, 0x05, 0x0400, 0x0200, NULL};
const LocationItem_t LocationItem39_01 = {0x00, 0x07, 0x00, 0x0200, 0x0200, NULL};
const LocationItem_t LocationItem39_02 = {0x00, 0x30, 0x00, 0x1000, 0x0600, NULL};
      LocationItem_t LocationItem39_03 = {0x9C, GEM, 0x00, 0x0600, 0x1D00, NULL};
const LocationItem_t LocationItem3A_00 = {0x00, 0x00, 0x00, 0x0000, 0x1300, NULL};
const LocationItem_t LocationItem3A_01 = {0x01, 0x0A, 0x02, 0x0300, 0x1D00, NULL};
const LocationItem_t LocationItem3A_02 = {0x02, 0x0B, 0x00, 0x0C00, 0x0C00, NULL};
const LocationItem_t LocationItem3B_00 = {0x80, 0x07, 0x00, 0x0600, 0x0100, NULL};
const LocationItem_t LocationItem3B_01 = {0x01, 0x0F, 0x02, 0x0D40, 0x2300, NULL};
const LocationItem_t LocationItem3B_02 = {0x02, 0x0E, 0x02, 0x0E60, 0x1E00, NULL};
const LocationItem_t LocationItem3C_00 = {0x00, 0x00, 0x00, 0x0D40, 0x0100, NULL};
const LocationItem_t LocationItem3C_01 = {0x00, 0x25, 0x00, 0x0920, 0x2160, NULL};
const LocationItem_t LocationItem3D_00 = {0x00, 0x00, 0x00, 0x0F20, 0x0500, NULL};
const LocationItem_t LocationItem3D_01 = {0x00, 0x34, 0x00, 0x0500, 0x0900, NULL};
const LocationItem_t LocationItem3D_02 = {0x00, 0x32, 0x00, 0x0840, 0x1D00, (void *)&SpiderData};
const LocationItem_t LocationItem3D_03 = {0x00, 0x32, 0x01, 0x0840, 0x2200, (void *)&SpiderData};
const LocationItem_t LocationItem3D_04 = {0x00, 0x35, 0x00, 0x0500, 0x1E00, NULL};
/****************************************/
const void *Items00[] = {
    &LocationItem00_00,
    &LocationItem00_01,
    &LocationItem00_02,
0x00};
const void *Items01[] = {
    &LocationItem01_00,
    &LocationItem01_01,
    &LocationItem01_02,
0x00};
const void *Items02[] = {
    &LocationItem02_00,
0x00};
const void *Items03[] = {
    &LocationItem03_00,
    &LocationItem03_01,
0x00};
const void *Items04[] = {
    &LocationItem04_00,
    &LocationItem04_01,
    &LocationItem04_02,
0x00};
const void *Items05[] = {
    &LocationItem05_00,
    &LocationItem05_01,
    &LocationItem05_02,
    &LocationItem05_03,
0x00};
const void *Items06[] = {
    &LocationItem06_00,
    &LocationItem06_01,
    &LocationItem06_02,
0x00};
const void *Items07[] = {
    &LocationItem07_00,
    &LocationItem07_01,
    &LocationItem07_02,
    &LocationItem07_03,
0x00};
const void *Items08[] = {
    &LocationItem08_00,
    &LocationItem08_01,
    &LocationItem08_02,
0x00};
const void *Items09[] = {
    &LocationItem09_00,
    &LocationItem09_01,
    &LocationItem09_02,
0x00};
const void *Items0A[] = {
    &LocationItem0A_00,
    &LocationItem0A_01,
    &LocationItem0A_02,
    &LocationItem0A_03,
0x00};
const void *Items0B[] = {
    &LocationItem0B_00,
    &LocationItem0B_01,
    &LocationItem0B_02,
    &LocationItem0B_03,
0x00};
const void *Items0C[] = {
    &LocationItem0C_00,
    &LocationItem0C_01,
    &LocationItem0C_02,
0x00};
const void *Items0D[] = {
    &LocationItem0D_00,
    &LocationItem0D_01,
    &LocationItem0D_02,
0x00};
const void *Items0E[] = {
    &LocationItem0E_00,
    &LocationItem0E_01,
0x00};
const void *Items0F[] = {
    &LocationItem0F_00,
    &LocationItem0F_01,
    &LocationItem0F_02,
0x00};
const void *Items10[] = {
    &LocationItem10_00,
    &LocationItem10_01,
    &LocationItem10_02,
0x00};
const void *Items11[] = {
    &LocationItem11_00,
    &LocationItem11_01,
    &LocationItem11_02,
0x00};
const void *Items12[] = {
    &LocationItem12_00,
    &LocationItem12_01,
    &LocationItem12_02,
0x00};
const void *Items13[] = {
    &LocationItem13_00,
    &LocationItem13_01,
    &LocationItem13_02,
0x00};
const void *Items14[] = {
    &LocationItem14_00,
    &LocationItem14_01,
    &LocationItem14_02,
    &LocationItem14_03,
    &LocationItem14_04,
0x00};
const void *Items15[] = {
    &LocationItem15_00,
    &LocationItem15_01,
    &LocationItem15_02,
    &LocationItem15_03,
    &LocationItem15_04,
0x00};
const void *Items16[] = {
    &LocationItem16_00,
    &LocationItem16_01,
    &LocationItem16_02,
    &LocationItem16_03,
    &LocationItem16_04,
0x00};
const void *Items17[] = {
    &LocationItem17_00,
    &LocationItem17_01,
    &LocationItem17_02,
    &LocationItem17_03,
    &LocationItem17_04,
0x00};
const void *Items18[] = {
    &LocationItem18_00,
    &LocationItem18_01,
0x00};
const void *Items19[] = {
    &LocationItem19_00,
    &LocationItem19_01,
    &LocationItem19_02,
0x00};
const void *Items1A[] = {
    &LocationItem1A_00,
    &LocationItem1A_01,
    &LocationItem1A_02,
    &LocationItem1A_03,
0x00};
const void *Items1B[] = {
    &LocationItem1B_00,
    &LocationItem1B_01,
0x00};
const void *Items1C[] = {
    &LocationItem1C_00,
    &LocationItem1C_01,
0x00};
const void *Items1D[] = {
    &LocationItem1D_00,
    &LocationItem1D_01,
    &LocationItem1D_02,
0x00};
const void *Items1E[] = {
    &LocationItem1E_00,
    &LocationItem1E_01,
0x00};
const void *Items1F[] = {
    &LocationItem1F_00,
    &LocationItem1F_01,
0x00};
const void *Items20[] = {
    &LocationItem20_00,
    &LocationItem20_01,
0x00};
const void *Items21[] = {
    &LocationItem21_00,
    &LocationItem21_01,
    &LocationItem21_02,
0x00};
const void *Items22[] = {
    &LocationItem22_00,
    &LocationItem22_01,
    &LocationItem22_02,
    &LocationItem22_03,
0x00};
const void *Items23[] = {
    &LocationItem23_00,
0x00};
const void *Items24[] = {
    &LocationItem24_00,
    &LocationItem24_01,
    &LocationItem24_02,
0x00};
const void *Items25[] = {
    &LocationItem25_00,
    &LocationItem25_01,
    &LocationItem25_02,
0x00};
const void *Items26[] = {
    &LocationItem26_00,
    &LocationItem26_01,
    &LocationItem26_02,
    &LocationItem26_03,
0x00};
const void *Items27[] = {
    &LocationItem27_00,
    &LocationItem27_01,
    &LocationItem27_02,
0x00};
const void *Items28[] = {
    &LocationItem28_00,
    &LocationItem28_01,
0x00};
const void *Items29[] = {
    &LocationItem29_00,
    &LocationItem29_01,
    &LocationItem29_02,
0x00};
const void *Items2A[] = {
    &LocationItem2A_00,
    &LocationItem2A_01,
0x00};
const void *Items2B[] = {
    &LocationItem2B_00,
    &LocationItem2B_01,
    &LocationItem2B_02,
    &LocationItem2B_03,
    &LocationItem2B_04,
0x00};
const void *Items2C[] = {
    &LocationItem2C_00,
    &LocationItem2C_01,
    &LocationItem2C_02,
0x00};
const void *Items2D[] = {
    &LocationItem2D_00,
    &LocationItem2D_01,
    &LocationItem2D_02,
0x00};
const void *Items2E[] = {
    &LocationItem2E_00,
    &LocationItem2E_01,
    &LocationItem2E_02,
    &LocationItem2E_03,
0x00};
const void *Items2F[] = {
    &LocationItem2F_00,
    &LocationItem2F_01,
0x00};
const void *Items30[] = {
    &LocationItem30_00,
    &LocationItem30_01,
0x00};
const void *Items31[] = {
    &LocationItem31_00,
    &LocationItem31_01,
    &LocationItem31_02,
0x00};
const void *Items32[] = {
    &LocationItem32_00,
    &LocationItem32_01,
0x00};
const void *Items33[] = {
0x00};
const void *Items34[] = {
0x00};
const void *Items35[] = {
    &LocationItem35_00,
    &LocationItem35_01,
0x00};
const void *Items36[] = {
    &LocationItem36_00,
    &LocationItem36_01,
0x00};
const void *Items37[] = {
    &LocationItem37_00,
    &LocationItem37_01,
    &LocationItem37_02,
0x00};
const void *Items38[] = {
    &LocationItem38_00,
    &LocationItem38_01,
0x00};
const void *Items39[] = {
    &LocationItem39_00,
    &LocationItem39_01,
    &LocationItem39_02,
    &LocationItem39_03,
0x00};
const void *Items3A[] = {
    &LocationItem3A_00,
    &LocationItem3A_01,
    &LocationItem3A_02,
0x00};
const void *Items3B[] = {
    &LocationItem3B_00,
    &LocationItem3B_01,
    &LocationItem3B_02,
0x00};
const void *Items3C[] = {
    &LocationItem3C_00,
    &LocationItem3C_01,
0x00};
const void *Items3D[] = {
    &LocationItem3D_00,
    &LocationItem3D_01,
    &LocationItem3D_02,
    &LocationItem3D_03,
    &LocationItem3D_04,
0x00};
/****************************************/
void *Scripts0[] = {
    (void *)&LocScripts_Log0,
    (void *)&LocScripts_Log1,
    NULL
};

void *Scripts1[] = {
    (void *)&LocScripts_Log2,
    (void *)&LocScripts_Log1,
    NULL
};
/****************************************/
const LocationInfo_t Location00 = {0xFF, 0x11, 0x81, 0x81, 0x03, &Items00, Scripts0};
const LocationInfo_t Location01 = {0x07, 0xFF, 0x18, 0x82, 0x03, &Items01, Scripts1};
const LocationInfo_t Location02 = {0xFF, 0xFF, 0x39, 0x83, 0x01, &Items02, NULL};
const LocationInfo_t Location03 = {0xFF, 0xFF, 0x06, 0xFF, 0x02, &Items03, NULL};
const LocationInfo_t Location04 = {0x05, 0x05, 0x11, 0x11, 0x03, &Items04, NULL};
const LocationInfo_t Location05 = {0x06, 0x06, 0x04, 0x04, 0x04, &Items05, NULL};
const LocationInfo_t Location06 = {0xFF, 0x03, 0x05, 0x05, 0x03, &Items06, NULL};
const LocationInfo_t Location07 = {0x08, 0x08, 0x01, 0x01, 0x04, &Items07, NULL};
const LocationInfo_t Location08 = {0x09, 0x09, 0x07, 0x07, 0x03, &Items08, NULL};
const LocationInfo_t Location09 = {0x0A, 0x0A, 0x08, 0x08, 0x03, &Items09, NULL};
const LocationInfo_t Location0A = {0x0B, 0x0B, 0x09, 0x09, 0x04, &Items0A, NULL};
const LocationInfo_t Location0B = {0x0C, 0x0C, 0x0A, 0x0A, 0x04, &Items0B, NULL};
const LocationInfo_t Location0C = {0x0D, 0x0D, 0x0B, 0x0B, 0x03, &Items0C, NULL};
const LocationInfo_t Location0D = {0x0E, 0x0E, 0x25, 0x0C, 0x03, &Items0D, NULL};
const LocationInfo_t Location0E = {0x0F, 0x0F, 0x0D, 0x0D, 0x02, &Items0E, NULL};
const LocationInfo_t Location0F = {0x10, 0x10, 0x0E, 0x0E, 0x03, &Items0F, NULL};
const LocationInfo_t Location10 = {0x12, 0x18, 0x0F, 0x0F, 0x03, &Items10, NULL};
const LocationInfo_t Location11 = {0x04, 0x04, 0x00, 0x00, 0x03, &Items11, NULL};
const LocationInfo_t Location12 = {0x13, 0x13, 0xFF, 0x10, 0x03, &Items12, NULL};
const LocationInfo_t Location13 = {0x14, 0x14, 0x12, 0x12, 0x03, &Items13, NULL};
const LocationInfo_t Location14 = {0x15, 0x15, 0x13, 0x13, 0x05, &Items14, NULL};
const LocationInfo_t Location15 = {0x16, 0x16, 0x14, 0x14, 0x05, &Items15, NULL};
const LocationInfo_t Location16 = {0x17, 0x17, 0x15, 0x15, 0x05, &Items16, NULL};
const LocationInfo_t Location17 = {0x18, 0x18, 0x16, 0x16, 0x05, &Items17, NULL};
const LocationInfo_t Location18 = {0xFF, 0x01, 0x17, 0x17, 0x02, &Items18, NULL};
const LocationInfo_t Location19 = {0x2A, 0x2A, 0x1A, 0x1A, 0x03, &Items19, NULL};
const LocationInfo_t Location1A = {0x19, 0x19, 0x1B, 0x1B, 0x04, &Items1A, NULL};
const LocationInfo_t Location1B = {0x1A, 0x1A, 0x1C, 0x1C, 0x02, &Items1B, NULL};
const LocationInfo_t Location1C = {0x1B, 0x1B, 0x1D, 0x1D, 0x02, &Items1C, NULL};
const LocationInfo_t Location1D = {0xFF, 0xFF, 0x1E, 0x1E, 0x03, &Items1D, NULL};
const LocationInfo_t Location1E = {0x1D, 0x1D, 0x1F, 0x1F, 0x02, &Items1E, NULL};
const LocationInfo_t Location1F = {0x1E, 0x1E, 0x20, 0x20, 0x02, &Items1F, NULL};
const LocationInfo_t Location20 = {0x1F, 0x1F, 0x21, 0x21, 0x02, &Items20, NULL};
const LocationInfo_t Location21 = {0x20, 0x20, 0x22, 0x22, 0x03, &Items21, NULL};
const LocationInfo_t Location22 = {0x21, 0x21, 0x23, 0x23, 0x04, &Items22, NULL};
const LocationInfo_t Location23 = {0x22, 0x22, 0x24, 0x24, 0x01, &Items23, NULL};
const LocationInfo_t Location24 = {0x23, 0x23, 0x2B, 0x2B, 0x03, &Items24, NULL};
const LocationInfo_t Location25 = {0xFF, 0x0D, 0x26, 0xFF, 0x03, &Items25, NULL};
const LocationInfo_t Location26 = {0xFF, 0x25, 0x27, 0xFF, 0x04, &Items26, NULL};
const LocationInfo_t Location27 = {0xFF, 0x26, 0x28, 0xFF, 0x03, &Items27, NULL};
const LocationInfo_t Location28 = {0xFF, 0x27, 0x29, 0xFF, 0x02, &Items28, NULL};
const LocationInfo_t Location29 = {0xFF, 0x28, 0x2A, 0xFF, 0x03, &Items29, NULL};
const LocationInfo_t Location2A = {0xFF, 0x29, 0x19, 0x81, 0x02, &Items2A, NULL};
const LocationInfo_t Location2B = {0x24, 0x24, 0xFF, 0xFF, 0x05, &Items2B, NULL};
const LocationInfo_t Location2C = {0xFF, 0xFF, 0xFF, 0x6D, 0x03, &Items2C, NULL};
const LocationInfo_t Location2D = {0xFF, 0xFF, 0x31, 0x6E, 0x03, &Items2D, NULL};
const LocationInfo_t Location2E = {0xFF, 0xFF, 0xFF, 0x6F, 0x04, &Items2E, NULL};
const LocationInfo_t Location2F = {0xFF, 0x32, 0xFF, 0x70, 0x02, &Items2F, NULL};
const LocationInfo_t Location30 = {0xFF, 0xFF, 0x33, 0x33, 0x02, &Items30, NULL};
const LocationInfo_t Location31 = {0x2D, 0x2D, 0xFF, 0xFF, 0x03, &Items31, NULL};
const LocationInfo_t Location32 = {0xFF, 0xFF, 0x2F, 0x2F, 0x02, &Items32, NULL};
const LocationInfo_t Location33 = {0x30, 0x30, 0x34, 0x34, 0x00, &Items33, NULL};
const LocationInfo_t Location34 = {0x33, 0x33, 0x36, 0x36, 0x00, &Items34, NULL};
const LocationInfo_t Location35 = {0xFF, 0xFF, 0xFF, 0xFF, 0x02, &Items35, NULL};
const LocationInfo_t Location36 = {0x34, 0x34, 0x38, 0x38, 0x02, &Items36, NULL};
const LocationInfo_t Location37 = {0xFF, 0xFE, 0xFF, 0xFF, 0x03, &Items37, NULL};
const LocationInfo_t Location38 = {0x36, 0x36, 0x3B, 0x3B, 0x02, &Items38, NULL};
const LocationInfo_t Location39 = {0xFF, 0x02, 0xFF, 0xFF, 0x04, &Items39, NULL};
const LocationInfo_t Location3A = {0xFF, 0xFF, 0xFE, 0xFE, 0x03, &Items3A, NULL};
const LocationInfo_t Location3B = {0x38, 0x38, 0x3C, 0x3C, 0x03, &Items3B, NULL};
const LocationInfo_t Location3C = {0x3B, 0x3B, 0xFF, 0xFF, 0x02, &Items3C, NULL};
const LocationInfo_t Location3D = {0xFF, 0xFF, 0xFF, 0xFF, 0x05, &Items3D, NULL};
/****************************************/
const void *Locations[] = {
    &Location00,
    &Location01,
    &Location02,
    &Location03,
    &Location04,
    &Location05,
    &Location06,
    &Location07,
    &Location08,
    &Location09,
    &Location0A,
    &Location0B,
    &Location0C,
    &Location0D,
    &Location0E,
    &Location0F,
    &Location10,
    &Location11,
    &Location12,
    &Location13,
    &Location14,
    &Location15,
    &Location16,
    &Location17,
    &Location18,
    &Location19,
    &Location1A,
    &Location1B,
    &Location1C,
    &Location1D,
    &Location1E,
    &Location1F,
    &Location20,
    &Location21,
    &Location22,
    &Location23,
    &Location24,
    &Location25,
    &Location26,
    &Location27,
    &Location28,
    &Location29,
    &Location2A,
    &Location2B,
    &Location2C,
    &Location2D,
    &Location2E,
    &Location2F,
    &Location30,
    &Location31,
    &Location32,
    &Location33,
    &Location34,
    &Location35,
    &Location36,
    &Location37,
    &Location38,
    &Location39,
    &Location3A,
    &Location3B,
    &Location3C,
    &Location3D,
0x00};

const LocationItem_t *Pickables[PICKABLES_COUNT] = {
	&LocationItem05_01,
	&LocationItem05_02,
	&LocationItem07_03,
	&LocationItem08_02,
	&LocationItem0A_03,
	&LocationItem0C_02,
	&LocationItem0D_02,
	&LocationItem10_02,
	&LocationItem15_04,
	&LocationItem16_04,
	&LocationItem17_04,
	&LocationItem1A_03,
	&LocationItem1A_03,
	&LocationItem26_03,
	&LocationItem27_02,
	&LocationItem29_02,
	&LocationItem2B_04,
	&LocationItem31_02,
	&LocationItem39_03
};

unsigned int LoadLocation() {
		int i;
		int Count = 1; /* Because only player is always present */
		int c;
        unsigned int order;
		LocationInfo_t *l = ((LocationInfo_t *)Locations[Game.Location]);
		void **Items = l->Items;
		LocationItem_t *Item;

		BuildBackground(Game.Location);
		DrawPrimaryBuffer();

		for(i=0;i<l->ItemsCount;i++) {
				Item = Items[i];
				if((Item->Flags & DO_NOT_LOAD))
					continue;
				if(Item->Animation != PLAYER) {
						c = NewChar();
				} else {
					if(CHAR_FLAG(PLAYER, CF_ACTIVE))
						continue;
					else {
						c = 0;
                        CharData[PLAYER].Order = 0;
                    }
				}
				if(c != NO_ROOM) {
                    order = CharData[c].Order;
					LoadCharData(c, Item);
                    CharData[c].Order = order;
					Count++;
				}
		}

		return Count;
}
