within Modelica_Magnetic_Transformers.BaseTransformers.ThreePhase.Dd;
model Dd04 "Transformer Dd4"
  extends Modelica_Magnetic_Transformers.Interfaces.ThreePhase.Transformer(final VectorGroup="Dd04");
  Modelica.Electrical.MultiPhase.Basic.Delta Delta1(final m=m)
    annotation (Placement(transformation(extent={{-60,-50},{-40,-30}},
          rotation=0)));
  Modelica.Electrical.MultiPhase.Basic.Delta Delta2(final m=m)
    annotation (Placement(transformation(extent={{40,-10},{60,10}},
          rotation=0)));
equation
  connect(Delta1.plug_n, transformer.plug_n1) annotation (Line(points={{-40,-40},
        {-10,-40},{-10,-6}},   color={0,0,255}));
  connect(transformer.plug_p2, Delta2.plug_p) annotation (Line(points={{10,10},
        {10,10},{30,10},{30,0},{36,0},{36,6.66134e-16},{40,6.66134e-16}},
                            color={0,0,255}));
connect(transformer.plug_p1, plug1) annotation (Line(
    points={{-10,6},{-30,6},{-30,0},{-100,0}},
    color={0,0,255},
    smooth=Smooth.None));
connect(Delta1.plug_p, plug1) annotation (Line(
    points={{-60,-40},{-100,-40},{-100,4.44089e-16}},
    color={0,0,255},
    smooth=Smooth.None));
connect(transformer.plug_n3, plug2) annotation (Line(
    points={{10,-10},{10,-40},{100,-40},{100,4.44089e-16}},
    color={0,0,255},
    smooth=Smooth.None));
connect(Delta2.plug_n, plug2) annotation (Line(
    points={{60,6.66134e-16},{100,6.66134e-16},{100,0}},
    color={0,0,255},
    smooth=Smooth.None));
connect(transformer.plug_n2, transformer.plug_p3) annotation (Line(
    points={{10,4},{16,4},{16,-4},{10,-4},{10,-4}},
    color={0,0,255},
    smooth=Smooth.None));
  annotation (defaultComponentName="transformer", Documentation(info="<html>
Transformer Dd4
<br>Typical parameters see:
<a href=\"modelica://Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer\">PartialBasicTransformer</a>
</html>"),
  Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
          -100},{100,100}}), graphics));
end Dd04;
