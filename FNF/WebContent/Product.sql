CREATE OR REPLACE PROCEDURE product_insert
(
	p_sellerid			IN			product.sellerid%TYPE,
	p_pcode		IN			product.pcode%TYPE,
	p_pname				IN			product.pname%TYPE,
	p_pcontents				IN			product.pcontents%TYPE,
	p_origin		IN			product.origin%TYPE,
	p_unit		IN			product.unit%TYPE,
	p_filename		IN			product.filename%TYPE,
	p_category		IN			product.category%TYPE,
	p_stock		IN			product.stock%TYPE,
	p_price		IN			product.price%TYPE,
	p_sell_num		IN			product.sell_num%TYPE,
	p_recomm		IN			product.recomm%TYPE
)
IS
BEGIN
	INSERT INTO Product
	VALUES (product_idx_seq.NEXTVAL, p_sellerid, p_pcode, p_pname, p_pcontents, p_origin, p_unit, p_filename, p_category,p_stock,p_price,0,0,SYSDATE);
	COMMIT;
END ;

CREATE OR REPLACE procedure product_selectAll
(
   product_record OUT SYS_REFCURSOR
)
AS
BEGIN
   OPEN product_record FOR
   SELECT idx, pcode, pname, filename, category, price, sell_num, writedate
   FROM product ORDER BY writedate DESC;
END;

CREATE OR REPLACE PROCEDURE product_select
(
	p_idx 					IN			product.idx%TYPE,
	product_record			OUT		SYS_REFCURSOR
)
AS
BEGIN
	OPEN product_record FOR
	SELECT * FROM Product
	WHERE idx = p_idx;
END;