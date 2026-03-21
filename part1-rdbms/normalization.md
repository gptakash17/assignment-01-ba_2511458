## Anomaly Analysis



### Insert Anomaly



Product data is stored together with order data in the same table.
If a new product needs to be added to the system but no order has been placed yet,
it cannot be inserted without creating a fake order.

For example, product 'P004' (Notebook) appears only when an order exists.



-------------------------------------------------------------------------------------------------



### Update Anomaly



Customer information is repeated across multiple rows.
If the customer's email or city changes, all rows must be updated.
If one row is missed, the database will contain inconsistent data.

For example, customer_id 'C002' (Priya Sharma) appears in orders ORD1027, ORD1002, and ORD1037.



------------------------------------------------------------------------------------------------



### Delete Anomaly



If an order record is deleted, important information about customers, products, or sales may also be lost.


For example, If we delete the order_ID 'ORD1185' then we will be lost all the information related to product 'Webcam' because it is unique in its row.



------------------------------------------------------------------------------------------------



## Normalization Justification



Keeping all data in one large table may seem simple, but it causes many problems. The same information would be repeated many times. For example, if a customer places several orders, their name, city, and contact details would appear in every order row. This repetition wastes storage and increases the chance of mistakes. If a customer’s city changes, it would have to be updated in many rows.

Normalization solves this problem by splitting the data into separate tables such as Customers, Orders, Products, and Order_Items. Each table stores only the information related to that specific column. For example, customer details are stored once in the Customers table.

This structure also prevents other issues. In a single table, adding a new product without an order might not be possible, and deleting an order could accidentally remove important product or customer information.

By organizing the database into smaller related tables, the dataset becomes easier to manage, more accurate, and more efficient. Therefore, normalization helps keep the data clean and consistent.



