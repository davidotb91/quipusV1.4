package com.ec.entidades;

import com.ec.entidades.Factura;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-01-03T23:23:17")
@StaticMetamodel(Proveedor.class)
public class Proveedor_ { 

    public static volatile SingularAttribute<Proveedor, String> nombreProveedor;
    public static volatile SingularAttribute<Proveedor, Integer> ruc;
    public static volatile SingularAttribute<Proveedor, Integer> idProveedor;
    public static volatile CollectionAttribute<Proveedor, Factura> facturaCollection;

}