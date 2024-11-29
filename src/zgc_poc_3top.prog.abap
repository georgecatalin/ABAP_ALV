*&---------------------------------------------------------------------*
*& Include ZGC_POC_1TOP                             - Module Pool      ZGC_POC_1
*& Author: George Calin
*& Date: 2024-11-28
*&---------------------------------------------------------------------*

* Screen elements
CONTROLS: header_tbl TYPE TABLEVIEW USING SCREEN '0100',
          item_tbl TYPE TABLEVIEW USING SCREEN '0100'.

TABLES: VBAK.

* Types and global variables derived from them
TYPES: BEGIN OF ty_sales_header,
        orderid TYPE vbak-vbeln,
        date TYPE vbak-erdat,
        createdby TYPE vbak-ernam,
        type TYPE vbak-auart,
        channel TYPE vbak-vtweg,
        organization TYPE vbak-vkorg,
        office TYPE vbak-vkbur,
        currency TYPE vbak-waerk,
        totalamount TYPE vbak-netwr,
      END OF ty_sales_header.

DATA: gt_sales_header TYPE TABLE OF ty_sales_header,
      gs_sales_header TYPE ty_sales_header.

TYPES: BEGIN OF ty_sales_item,
        orderid TYPE vbap-vbeln,
        line TYPE vbap-posnr,
        itemcode TYPE vbap-matnr,
        plant TYPE vbap-werks,
        storage TYPE vbap-lgort,
        quantity TYPE vbap-kwmeng,
        currency TYPE vbap-waerk,
        lineamount TYPE vbap-netwr,
       END OF ty_sales_item.

DATA: gt_sales_item TYPE TABLE OF ty_sales_item,
      gs_sales_item TYPE ty_sales_item.


* Global variabiles not bound to types
DATA: gv_current_line TYPE i,
      gv_previous_line TYPE i.

DATA: gv_distribution_channel TYPE C LENGTH 5,
      gv_average_sales_order TYPE p DECIMALS 2.

* Conditional formatting stuffs
