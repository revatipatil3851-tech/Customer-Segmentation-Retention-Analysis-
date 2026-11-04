# Customer Segmentation & Retention Analytics

## Project Overview

This project focuses on analysing customer purchasing behaviour in an Indian e-commerce business using RFM (Recency, Frequency, Monetary) analysis.

The objective is to identify valuable customer segments, understand purchasing patterns, and develop data-driven strategies to improve customer retention and business performance.

## Business Objectives

- Identify high-value and loyal customers.
- Understand customer purchasing behaviour.
- Identify customers at risk of becoming inactive.
- Analyse revenue contribution across customer segments.
- Recommend strategies to improve customer retention.

## Tools & Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning, exploration and RFM analysis |
| Pandas | Data manipulation and analysis |
| SQL | Customer-level analysis and business queries |
| Power BI | Interactive dashboards and visualisation |
| GitHub | Project documentation and version control |

## Dataset Description

The project uses a synthetic Indian e-commerce dataset containing four datasets:

| Dataset | Description |
|---|---|
| Customers | Customer demographic and location details |
| Orders | Order dates, status and customer information |
| Products | Product categories and details |
| Order Items | Product quantities, prices and order-level details |

**Analysis Period:** January 2024 – August 2026

**Note:** The dataset is synthetic and created for learning and portfolio demonstration purposes.

## RFM Analysis Methodology

RFM analysis is used to evaluate customer behaviour based on three key metrics:

| Metric | Definition | Business Meaning |
|---|---|---|
| Recency | Days since the customer's last purchase | How recently the customer purchased |
| Frequency | Total number of purchases | How often the customer purchases |
| Monetary | Total customer spending | How much the customer spends |

Customers were scored and grouped into meaningful segments based on their RFM values.

### Customer Segments

The analysis identified the following customer segments:

- Champions
- Loyal Customers
- Potential Loyalists
- Recent Customers
- Need Attention
- At Risk
- Hibernating

## Customer Segmentation Results

The RFM analysis identified 7,376 customers across seven segments.

| Customer Segment | Customers | Revenue (₹) |
|---|---:|---:|
| Champions | 1,461 | 367,353,231.82 |
| Loyal Customers | 1,085 | 143,828,748.52 |
| At Risk | 1,011 | 117,015,566.43 |
| Potential Loyalists | 862 | 57,157,671.27 |
| Hibernating | 1,940 | 52,674,772.36 |
| Need Attention | 937 | 45,504,812.07 |
| Recent Customers | 80 | 846,586.16 |
| **Total** | **7,376** | **784,381,388.63** |

### Key Performance Indicators

- Total Customers: 7,376
- Total Revenue: ₹78.44 Crore
- Average Revenue per Customer: ₹1,06,342
- Average Orders per Customer: 3.89
- Average Recency: 281 Days
