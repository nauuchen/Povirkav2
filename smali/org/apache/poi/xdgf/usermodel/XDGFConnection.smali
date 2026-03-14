.class public Lorg/apache/poi/xdgf/usermodel/XDGFConnection;
.super Ljava/lang/Object;
.source "XDGFConnection.java"


# static fields
.field public static final visBegin:I = 0x9

.field public static final visBeginX:I = 0x7

.field public static final visBeginY:I = 0x8

.field public static final visBottomEdge:I = 0x4

.field public static final visCenterEdge:I = 0x2

.field public static final visConnectFromError:I = -0x1

.field public static final visConnectToError:I = -0x1

.field public static final visEnd:I = 0xc

.field public static final visEndX:I = 0xa

.field public static final visEndY:I = 0xb

.field public static final visFromAngle:I = 0xd

.field public static final visFromNone:I = 0x0

.field public static final visFromPin:I = 0xe

.field public static final visGuideIntersect:I = 0x4

.field public static final visGuideX:I = 0x1

.field public static final visGuideY:I = 0x2

.field public static final visLeftEdge:I = 0x1

.field public static final visMiddleEdge:I = 0x5

.field public static final visRightEdge:I = 0x3

.field public static final visToAngle:I = 0x7

.field public static final visToNone:I = 0x0

.field public static final visTopEdge:I = 0x6

.field public static final visWholeShape:I = 0x3


# instance fields
.field private _connect:Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

.field private _from:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

.field private _to:Lorg/apache/poi/xdgf/usermodel/XDGFShape;


# direct methods
.method public constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;Lorg/apache/poi/xdgf/usermodel/XDGFShape;Lorg/apache/poi/xdgf/usermodel/XDGFShape;)V
    .locals 0
    .param p1, "connect"    # Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;
    .param p2, "from"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .param p3, "to"    # Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_connect:Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    .line 106
    iput-object p2, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_from:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 107
    iput-object p3, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_to:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    .line 108
    return-void
.end method


# virtual methods
.method public getFromCell()Lorg/apache/poi/xdgf/usermodel/XDGFCell;
    .locals 2

    .line 115
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_from:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    iget-object v1, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_connect:Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    invoke-interface {v1}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getFromCell()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/xdgf/usermodel/XDGFShape;->getCell(Ljava/lang/String;)Lorg/apache/poi/xdgf/usermodel/XDGFCell;

    move-result-object v0

    return-object v0
.end method

.method public getFromCellName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_connect:Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getFromCell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromPart()Ljava/lang/Integer;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_connect:Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->isSetFromPart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_connect:Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getFromPart()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_from:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object v0
.end method

.method public getToCellName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_connect:Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getToCell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToPart()Ljava/lang/Integer;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_connect:Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->isSetToPart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_connect:Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;

    invoke-interface {v0}, Lcom/microsoft/schemas/office/visio/x2012/main/ConnectType;->getToPart()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getToShape()Lorg/apache/poi/xdgf/usermodel/XDGFShape;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/poi/xdgf/usermodel/XDGFConnection;->_to:Lorg/apache/poi/xdgf/usermodel/XDGFShape;

    return-object v0
.end method
