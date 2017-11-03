within Modelica_Magnetic_Transformers.BaseTransformers.ThreePhase.Dz;
model Dz06 "Transformer Dz6"
  extends Modelica_Magnetic_Transformers.Interfaces.ThreePhase.Transformer(final VectorGroup="Dz06");
  Modelica.Electrical.MultiPhase.Basic.Star star2(final m=m)
    annotation (Placement(transformation(
        origin={10,-80},
        extent={{-10,-10},{10,10}},
        rotation=270)));
  Modelica.Electrical.Analog.Interfaces.NegativePin starpoint2
    annotation (Placement(transformation(extent={{40,-110},{60,-90}},
          rotation=0)));
  Modelica.Electrical.MultiPhase.Basic.Delta Rot21(final m=m)
    annotation (Placement(transformation(
        origin={50,0},
        extent={{10,-10},{-10,10}},
        rotation=90)));
  Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m)
    annotation (Placement(transformation(extent={{-60,-50},{-40,-30}},
          rotation=0)));
equation
  connect(star2.pin_n, starpoint2) annotation (Line(points={{10,-90},{
          10,-100},{50,-100}}, color={0,0,255}));
  connect(Delta1.plug_n, transformer.plug_n1) annotation (Line(points={{-40,-40},
        {-10,-40},{-10,-6}},   color={0,0,255}));
  connect(transformer.plug_p2, Rot21.plug_p)
    annotation (Line(points={{10,10},{26,10},{50,10}},
                                               color={0,0,255}));
  connect(transformer.plug_p3, Rot21.plug_n) annotation (Line(points={{10,-4},
        {20,-4},{20,-10},{50,-10}},   color={0,0,255}));
  connect(transformer.plug_n3, star2.plug_p) annotation (Line(points={{10,-10},
          {10,-40},{10,-70},{10,-70}}, color={0,0,255}));
connect(Delta1.plug_p, plug1) annotation (Line(
    points={{-60,-40},{-100,-40},{-100,0}},
    color={0,0,255},
    smooth=Smooth.None));
connect(transformer.plug_p1, plug1) annotation (Line(
    points={{-10,6},{-30,6},{-30,0},{-100,0}},
    color={0,0,255},
    smooth=Smooth.None));
connect(transformer.plug_n2, plug2) annotation (Line(
    points={{10,4},{20,4},{20,40},{100,40},{100,0}},
    color={0,0,255},
    smooth=Smooth.None));
  annotation (defaultComponentName="transformer", Documentation(info="<html>
Transformer Dz6
<br>Typical parameters see:
<a href=\"modelica://Transformers.Interfaces.PartialSymmetricTwoWindingTransformer\">PartialBasicTransformer</a>
</html>"),
  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
          -100},{100,100}}), graphics));
end Dz06;
