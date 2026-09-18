我们以金FW FW-190为例

尺寸数据：翼展 10.49米，机长 8.48米，机翼面积 18.3平方米。
重量数据：最大起飞重量 4900千克。
性能数据：最大速度 670千米/时，升限 10600米，航程 660千米。 
武器装备：四门 20毫米机炮，两挺 13毫米机枪。
动力装备：一台BMW 810发动机，功率1700马力，带涡轮增压时为2100马力。

同比缩小到1/9左右

下单翼

模型配件

http://cn.toprchobby.com/prod_view.aspx?nid=3&typeid=92&id=251

完成openvsp气动、simulink仿真和solidworks建模

之后加工

## OpenVSP

### 机身（Fuselage）

Fuselage模块

XSec

Plan（Planform，平面形状）、XSec（截面）、Skinning（蒙皮）

### 机翼（Wing）

- Gen
- XForm
- Mass
- Sub
- Plan
- Sect
    + Span（展长）
    + Root C（根弦长）
    + Tip C（梢弦长）
    + Sweep（后掠角）
    + Dihedarl（上反角）
- Airfoil
- Blending
- Modify

### 螺旋桨（Propeller）