.class public Lorg/apache/poi/xwpf/usermodel/XWPFRun;
.super Ljava/lang/Object;
.source "XWPFRun.java"

# interfaces
.implements Lorg/apache/poi/xwpf/usermodel/ISDTContents;
.implements Lorg/apache/poi/xwpf/usermodel/IRunElement;
.implements Lorg/apache/poi/wp/usermodel/CharacterRun;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;
    }
.end annotation


# instance fields
.field private parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

.field private pictureText:Ljava/lang/String;

.field private pictures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPicture;",
            ">;"
        }
    .end annotation
.end field

.field private run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;


# direct methods
.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V
    .locals 12
    .param p1, "r"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .param p2, "p"    # Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    .line 105
    iput-object p2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    .line 111
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getDrawingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object v0

    .local v0, "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 112
    .local v3, "ctDrawing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->getAnchorArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;

    move-result-object v4

    .local v4, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 113
    .local v7, "anchor":Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 114
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/util/IdentifierManager;

    move-result-object v8

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v9

    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/util/IdentifierManager;->reserve(J)J

    .line 112
    .end local v7    # "anchor":Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 117
    .end local v4    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTAnchor;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_1
    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->getInlineArray()[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    move-result-object v4

    .local v4, "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
    array-length v5, v4

    .restart local v5    # "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 118
    .local v7, "inline":Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 119
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/util/IdentifierManager;

    move-result-object v8

    invoke-interface {v7}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v9

    invoke-interface {v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lorg/apache/poi/util/IdentifierManager;->reserve(J)J

    .line 117
    .end local v7    # "inline":Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 111
    .end local v3    # "ctDrawing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    .end local v4    # "arr$":[Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "arr$":[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "text":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, "pictTextObjs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/xmlbeans/XmlObject;>;"
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getPictArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPicture;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    invoke-interface {p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getDrawingArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlObject;

    .line 130
    .local v3, "o":Lorg/apache/xmlbeans/XmlObject;
    const-string v4, "declare namespace w=\'http://schemas.openxmlformats.org/wordprocessingml/2006/main\' .//w:t"

    invoke-interface {v3, v4}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v4

    .line 131
    .local v4, "ts":[Lorg/apache/xmlbeans/XmlObject;
    move-object v5, v4

    .local v5, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v6, v5

    .local v6, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_4
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    .line 132
    .local v8, "t":Lorg/apache/xmlbeans/XmlObject;
    invoke-interface {v8}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 133
    .local v9, "kids":Lorg/w3c/dom/NodeList;
    const/4 v10, 0x0

    .local v10, "n":I
    :goto_5
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 134
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    instance-of v11, v11, Lorg/w3c/dom/Text;

    if-eqz v11, :cond_6

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 136
    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    :cond_5
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 131
    .end local v8    # "t":Lorg/apache/xmlbeans/XmlObject;
    .end local v9    # "kids":Lorg/w3c/dom/NodeList;
    .end local v10    # "n":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 141
    .end local v3    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v4    # "ts":[Lorg/apache/xmlbeans/XmlObject;
    .end local v5    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v6    # "len$":I
    .end local v7    # "i$":I
    :cond_8
    goto :goto_3

    .line 142
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    .line 146
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    .line 147
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/XmlObject;

    .line 148
    .restart local v3    # "o":Lorg/apache/xmlbeans/XmlObject;
    invoke-direct {p0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTPictures(Lorg/apache/xmlbeans/XmlObject;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    .line 149
    .local v5, "pict":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    new-instance v6, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-direct {v6, v5, p0}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    .line 150
    .local v6, "picture":Lorg/apache/poi/xwpf/usermodel/XWPFPicture;
    iget-object v7, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    .end local v5    # "pict":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    .end local v6    # "picture":Lorg/apache/poi/xwpf/usermodel/XWPFPicture;
    goto :goto_7

    .end local v3    # "o":Lorg/apache/xmlbeans/XmlObject;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_a
    goto :goto_6

    .line 153
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_b
    return-void
.end method

.method public constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;)V
    .locals 0
    .param p1, "r"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .param p2, "p"    # Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    .line 159
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;-><init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;Lorg/apache/poi/xwpf/usermodel/IRunBody;)V

    .line 160
    return-void
.end method

.method private _getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "o"    # Lorg/apache/xmlbeans/XmlObject;
    .param p2, "text"    # Ljava/lang/StringBuffer;

    .line 1146
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    if-eqz v0, :cond_0

    .line 1147
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 1151
    .local v0, "tagName":Ljava/lang/String;
    const-string/jumbo v1, "w:instrText"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1152
    move-object v1, p1

    check-cast v1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1157
    .end local v0    # "tagName":Ljava/lang/String;
    :cond_0
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    if-eqz v0, :cond_2

    .line 1158
    move-object v0, p1

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;

    .line 1159
    .local v0, "ctfldChar":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFldCharType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType;->BEGIN:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STFldCharType$Enum;

    if-ne v1, v2, :cond_2

    .line 1160
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFfData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1161
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;->getFfData()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFData;->getCheckBoxList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;

    .line 1162
    .local v2, "checkBox":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;->getDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;->getDefault()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v3

    sget-object v4, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-ne v3, v4, :cond_1

    .line 1163
    const-string/jumbo v3, "|X|"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1165
    :cond_1
    const-string/jumbo v3, "|_|"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v2    # "checkBox":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFFCheckBox;
    :goto_1
    goto :goto_0

    .line 1172
    .end local v0    # "ctfldChar":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFldChar;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTPTab;

    const-string v1, "\t"

    if-eqz v0, :cond_3

    .line 1173
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1175
    :cond_3
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    const-string v2, "\n"

    if-eqz v0, :cond_4

    .line 1176
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1178
    :cond_4
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    if-eqz v0, :cond_a

    .line 1184
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 1185
    .local v0, "tagName":Ljava/lang/String;
    const-string/jumbo v3, "w:tab"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "tab"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1186
    :cond_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1188
    :cond_6
    const-string/jumbo v1, "w:br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1189
    :cond_7
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1191
    :cond_8
    const-string/jumbo v1, "w:cr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "cr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1192
    :cond_9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1195
    .end local v0    # "tagName":Ljava/lang/String;
    :cond_a
    instance-of v0, p1, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    if-eqz v0, :cond_c

    .line 1196
    move-object v0, p1

    check-cast v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;

    .line 1197
    .local v0, "ftn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "footnoteReference"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "]"

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[footnoteRef:"

    goto :goto_2

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[endnoteRef:"

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;->getId()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "footnoteRef":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1201
    .end local v0    # "ftn":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFtnEdnRef;
    .end local v1    # "footnoteRef":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private getCTPictures(Lorg/apache/xmlbeans/XmlObject;)Ljava/util/List;
    .locals 8
    .param p1, "o"    # Lorg/apache/xmlbeans/XmlObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/xmlbeans/XmlObject;",
            ")",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "pics":Ljava/util/List;, "Ljava/util/List<Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "declare namespace pic=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v2}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' .//pic:pic"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/XmlObject;->selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    .line 180
    .local v1, "picts":[Lorg/apache/xmlbeans/XmlObject;
    move-object v2, v1

    .local v2, "arr$":[Lorg/apache/xmlbeans/XmlObject;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 181
    .local v5, "pict":Lorg/apache/xmlbeans/XmlObject;
    instance-of v6, v5, Lorg/apache/xmlbeans/impl/values/XmlAnyTypeImpl;

    if-eqz v6, :cond_0

    .line 184
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture$Factory;->parse(Ljava/lang/String;Lorg/apache/xmlbeans/XmlOptions;)Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    move-result-object v6
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 187
    goto :goto_1

    .line 185
    :catch_0
    move-exception v6

    .line 186
    .local v6, "e":Lorg/apache/xmlbeans/XmlException;
    new-instance v7, Lorg/apache/poi/POIXMLException;

    invoke-direct {v7, v6}, Lorg/apache/poi/POIXMLException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 189
    .end local v6    # "e":Lorg/apache/xmlbeans/XmlException;
    :cond_0
    :goto_1
    instance-of v6, v5, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    if-eqz v6, :cond_1

    .line 190
    move-object v6, v5

    check-cast v6, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v5    # "pict":Lorg/apache/xmlbeans/XmlObject;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "arr$":[Lorg/apache/xmlbeans/XmlObject;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_2
    return-object v0
.end method

.method private handleRuby(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;Z)V
    .locals 6
    .param p1, "rubyObj"    # Lorg/apache/xmlbeans/XmlObject;
    .param p2, "text"    # Ljava/lang/StringBuffer;
    .param p3, "extractPhonetic"    # Z

    .line 1114
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v0

    .line 1120
    .local v0, "c":Lorg/apache/xmlbeans/XmlCursor;
    const-string v1, ".//*"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 1121
    const/4 v1, 0x0

    .line 1122
    .local v1, "inRT":Z
    const/4 v2, 0x0

    .line 1123
    .local v2, "inBase":Z
    :goto_0
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1124
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v3

    .line 1125
    .local v3, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v4, v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRubyContent;

    if-eqz v4, :cond_2

    .line 1126
    invoke-interface {v3}, Lorg/apache/xmlbeans/XmlObject;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 1127
    .local v4, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "w:rt"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1128
    const/4 v1, 0x1

    goto :goto_1

    .line 1129
    :cond_0
    const-string/jumbo v5, "w:rubyBase"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1130
    const/4 v1, 0x0

    .line 1131
    const/4 v2, 0x1

    .line 1133
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_2

    .line 1134
    :cond_2
    if-eqz p3, :cond_3

    if-eqz v1, :cond_3

    .line 1135
    invoke-direct {p0, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->_getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;)V

    goto :goto_2

    .line 1136
    :cond_3
    if-nez p3, :cond_4

    if-eqz v2, :cond_4

    .line 1137
    invoke-direct {p0, v3, p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->_getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;)V

    .line 1140
    .end local v3    # "o":Lorg/apache/xmlbeans/XmlObject;
    :cond_4
    :goto_2
    goto :goto_0

    .line 1141
    :cond_5
    invoke-interface {v0}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 1142
    return-void
.end method

.method private static isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z
    .locals 3
    .param p0, "onoff"    # Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    .line 241
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->isSetVal()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 242
    return v1

    .line 243
    :cond_0
    invoke-interface {p0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    move-result-object v0

    .line 244
    .local v0, "val":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq v2, v0, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->X_1:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-eq v2, v0, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->ON:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    if-ne v2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method static preserveSpaces(Lorg/apache/xmlbeans/XmlString;)V
    .locals 5
    .param p0, "xs"    # Lorg/apache/xmlbeans/XmlString;

    .line 168
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlString;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    :cond_0
    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlString;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 171
    .local v1, "c":Lorg/apache/xmlbeans/XmlCursor;
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextToken()Lorg/apache/xmlbeans/XmlCursor$TokenType;

    .line 172
    new-instance v2, Ljavax/xml/namespace/QName;

    const-string v3, "http://www.w3.org/XML/1998/namespace"

    const-string v4, "space"

    invoke-direct {v2, v3, v4}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "preserve"

    invoke-interface {v1, v2, v3}, Lorg/apache/xmlbeans/XmlCursor;->insertAttributeWithValue(Ljavax/xml/namespace/QName;Ljava/lang/String;)V

    .line 173
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 175
    .end local v1    # "c":Lorg/apache/xmlbeans/XmlCursor;
    :cond_1
    return-void
.end method


# virtual methods
.method public addBreak()V
    .locals 1

    .line 845
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    .line 846
    return-void
.end method

.method public addBreak(Lorg/apache/poi/xwpf/usermodel/BreakClear;)V
    .locals 2
    .param p1, "clear"    # Lorg/apache/poi/xwpf/usermodel/BreakClear;

    .line 881
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    move-result-object v0

    .line 882
    .local v0, "br":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/BreakType;->TEXT_WRAPPING:Lorg/apache/poi/xwpf/usermodel/BreakType;

    invoke-virtual {v1}, Lorg/apache/poi/xwpf/usermodel/BreakType;->getValue()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;)V

    .line 883
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/BreakClear;->getValue()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrClear$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrClear$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->setClear(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrClear$Enum;)V

    .line 884
    return-void
.end method

.method public addBreak(Lorg/apache/poi/xwpf/usermodel/BreakType;)V
    .locals 2
    .param p1, "type"    # Lorg/apache/poi/xwpf/usermodel/BreakType;

    .line 863
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewBr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;

    move-result-object v0

    .line 864
    .local v0, "br":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/BreakType;->getValue()I

    move-result v1

    invoke-static {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBr;->setType(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STBrType$Enum;)V

    .line 865
    return-void
.end method

.method public addCarriageReturn()V
    .locals 1

    .line 911
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewCr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    .line 912
    return-void
.end method

.method public addPicture(Ljava/io/InputStream;ILjava/lang/String;II)Lorg/apache/poi/xwpf/usermodel/XWPFPicture;
    .locals 30
    .param p1, "pictureData"    # Ljava/io/InputStream;
    .param p2, "pictureType"    # I
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 943
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    const-string v0, "\">"

    iget-object v7, v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-interface {v7}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v7

    instance-of v7, v7, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;

    if-eqz v7, :cond_0

    .line 944
    iget-object v7, v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-interface {v7}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v7

    check-cast v7, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;

    .line 945
    .local v7, "headerFooter":Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;
    invoke-virtual {v7, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->addPictureData(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v8

    .line 946
    .local v8, "relationId":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lorg/apache/poi/xwpf/usermodel/XWPFHeaderFooter;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    .line 947
    .local v7, "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    goto :goto_0

    .line 949
    .end local v7    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .end local v8    # "relationId":Ljava/lang/String;
    :cond_0
    iget-object v7, v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-interface {v7}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v7

    .line 950
    .local v7, "doc":Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    invoke-virtual {v7, v2, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->addPictureData(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v8

    .line 951
    .restart local v8    # "relationId":Ljava/lang/String;
    invoke-virtual {v7, v8}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getRelationById(Ljava/lang/String;)Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v9

    check-cast v9, Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;

    move-object v7, v9

    .line 956
    .local v7, "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    :goto_0
    :try_start_0
    iget-object v9, v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v9}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewDrawing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;

    move-result-object v9

    .line 957
    .local v9, "drawing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    invoke-interface {v9}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;->addNewInline()Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;

    move-result-object v10

    .line 961
    .local v10, "inline":Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<a:graphic xmlns:a=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v12}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "<a:graphicData uri=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v12}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "<pic:pic xmlns:pic=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v11, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->type:Lorg/apache/xmlbeans/SchemaType;

    invoke-interface {v11}, Lorg/apache/xmlbeans/SchemaType;->getName()Ljavax/xml/namespace/QName;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "\" />"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "</a:graphicData>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "</a:graphic>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "xml":Ljava/lang/String;
    new-instance v11, Lorg/xml/sax/InputSource;

    new-instance v12, Ljava/io/StringReader;

    invoke-direct {v12, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 968
    .local v11, "is":Lorg/xml/sax/InputSource;
    invoke-static {v11}, Lorg/apache/poi/util/DocumentHelper;->readDocument(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v12

    .line 969
    .local v12, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v12}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    sget-object v14, Lorg/apache/poi/POIXMLTypeLoader;->DEFAULT_XML_OPTIONS:Lorg/apache/xmlbeans/XmlOptions;

    invoke-static {v13, v14}, Lorg/apache/xmlbeans/XmlToken$Factory;->parse(Lorg/w3c/dom/Node;Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlToken;

    move-result-object v13

    invoke-interface {v10, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    .line 972
    const-wide/16 v13, 0x0

    invoke-interface {v10, v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistT(J)V

    .line 973
    invoke-interface {v10, v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistR(J)V

    .line 974
    invoke-interface {v10, v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistB(J)V

    .line 975
    invoke-interface {v10, v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->setDistL(J)V

    .line 977
    invoke-interface {v10}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->addNewDocPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v15

    .line 978
    .local v15, "docPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/xwpf/usermodel/XWPFDocument;->getDrawingIdManager()Lorg/apache/poi/util/IdentifierManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/poi/util/IdentifierManager;->reserveNew()J

    move-result-wide v16

    move-wide/from16 v18, v16

    .line 979
    .local v18, "id":J
    move-wide/from16 v13, v18

    .end local v18    # "id":J
    .local v13, "id":J
    invoke-interface {v15, v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 981
    move-object/from16 v18, v0

    .end local v0    # "xml":Ljava/lang/String;
    .local v18, "xml":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drawing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 982
    invoke-interface {v15, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setDescr(Ljava/lang/String;)V

    .line 984
    invoke-interface {v10}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->addNewExtent()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v0

    .line 985
    .local v0, "extent":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    int-to-long v2, v5

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 986
    int-to-long v2, v6

    invoke-interface {v0, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 989
    invoke-interface {v10}, Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;->getGraphic()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;

    move-result-object v2

    .line 990
    .local v2, "graphic":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;->getGraphicData()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;

    move-result-object v3

    .line 991
    .local v3, "graphicData":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    move-object/from16 v19, v0

    .end local v0    # "extent":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .local v19, "extent":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    invoke-direct {v1, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getCTPictures(Lorg/apache/xmlbeans/XmlObject;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v20, v2

    .end local v2    # "graphic":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;
    .local v20, "graphic":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;

    .line 994
    .local v0, "pic":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->addNewNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;

    move-result-object v2

    .line 996
    .local v2, "nvPicPr":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;->addNewCNvPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;

    move-result-object v21
    :try_end_0
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v22, v21

    .line 998
    .local v22, "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    move-object/from16 v21, v3

    move-object/from16 v23, v9

    move-object/from16 v3, v22

    move-object/from16 v22, v8

    const-wide/16 v8, 0x0

    .end local v8    # "relationId":Ljava/lang/String;
    .end local v9    # "drawing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    .local v3, "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .local v21, "graphicData":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    .local v22, "relationId":Ljava/lang/String;
    .local v23, "drawing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    :try_start_1
    invoke-interface {v3, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setId(J)V

    .line 1000
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Picture "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setName(Ljava/lang/String;)V

    .line 1001
    invoke-interface {v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;->setDescr(Ljava/lang/String;)V

    .line 1003
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;->addNewCNvPicPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;

    move-result-object v8

    .line 1004
    .local v8, "cNvPicPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;->addNewPicLocks()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;

    move-result-object v9

    move-object/from16 v24, v2

    .end local v2    # "nvPicPr":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;
    .local v24, "nvPicPr":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPictureLocking;->setNoChangeAspect(Z)V

    .line 1006
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->addNewBlipFill()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;

    move-result-object v2

    .line 1007
    .local v2, "blipFill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewBlip()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;

    move-result-object v9

    .line 1008
    .local v9, "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    move-object/from16 v25, v3

    .end local v3    # "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .local v25, "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    iget-object v3, v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    invoke-interface {v3}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getPart()Lorg/apache/poi/POIXMLDocumentPart;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/apache/poi/POIXMLDocumentPart;->getRelationId(Lorg/apache/poi/POIXMLDocumentPart;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;->setEmbed(Ljava/lang/String;)V

    .line 1009
    invoke-interface {v2}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;->addNewStretch()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTStretchInfoProperties;->addNewFillRect()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTRelativeRect;

    .line 1011
    invoke-interface {v0}, Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;->addNewSpPr()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;

    move-result-object v3

    .line 1012
    .local v3, "spPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewXfrm()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;

    move-result-object v26

    .line 1014
    .local v26, "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    invoke-interface/range {v26 .. v26}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewOff()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;

    move-result-object v27
    :try_end_1
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v28, v27

    .line 1015
    .local v28, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    move-object/from16 v27, v2

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v2, v28

    const-wide/16 v7, 0x0

    .end local v7    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .end local v8    # "cNvPicPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;
    .end local v28    # "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    .local v2, "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    .local v16, "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .local v17, "cNvPicPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;
    .local v27, "blipFill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    :try_start_2
    invoke-interface {v2, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setX(J)V

    .line 1016
    invoke-interface {v2, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;->setY(J)V

    .line 1018
    invoke-interface/range {v26 .. v26}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;->addNewExt()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;

    move-result-object v7

    .line 1019
    .local v7, "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    move-object/from16 v28, v9

    .end local v9    # "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    .local v28, "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    int-to-long v8, v5

    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCx(J)V

    .line 1020
    int-to-long v8, v6

    invoke-interface {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;->setCy(J)V

    .line 1022
    invoke-interface {v3}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;->addNewPrstGeom()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;

    move-result-object v8

    .line 1023
    .local v8, "prstGeom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    sget-object v9, Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType;->RECT:Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;

    invoke-interface {v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->setPrst(Lorg/openxmlformats/schemas/drawingml/x2006/main/STShapeType$Enum;)V

    .line 1024
    invoke-interface {v8}, Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;->addNewAvLst()Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGeomGuideList;

    .line 1027
    new-instance v9, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;

    invoke-direct {v9, v0, v1}, Lorg/apache/poi/xwpf/usermodel/XWPFPicture;-><init>(Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;Lorg/apache/poi/xwpf/usermodel/XWPFRun;)V

    .line 1028
    .local v9, "xwpfPicture":Lorg/apache/poi/xwpf/usermodel/XWPFPicture;
    move-object/from16 v29, v0

    .end local v0    # "pic":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    .local v29, "pic":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    iget-object v0, v1, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/apache/xmlbeans/XmlException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1029
    return-object v9

    .line 1032
    .end local v2    # "off":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPoint2D;
    .end local v3    # "spPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTShapeProperties;
    .end local v7    # "ext":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .end local v8    # "prstGeom":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPresetGeometry2D;
    .end local v9    # "xwpfPicture":Lorg/apache/poi/xwpf/usermodel/XWPFPicture;
    .end local v10    # "inline":Lorg/openxmlformats/schemas/drawingml/x2006/wordprocessingDrawing/CTInline;
    .end local v11    # "is":Lorg/xml/sax/InputSource;
    .end local v12    # "doc":Lorg/w3c/dom/Document;
    .end local v13    # "id":J
    .end local v15    # "docPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .end local v17    # "cNvPicPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualPictureProperties;
    .end local v18    # "xml":Ljava/lang/String;
    .end local v19    # "extent":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTPositiveSize2D;
    .end local v20    # "graphic":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObject;
    .end local v21    # "graphicData":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTGraphicalObjectData;
    .end local v23    # "drawing":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDrawing;
    .end local v24    # "nvPicPr":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPictureNonVisual;
    .end local v25    # "cNvPr":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTNonVisualDrawingProps;
    .end local v26    # "xfrm":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTTransform2D;
    .end local v27    # "blipFill":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlipFillProperties;
    .end local v28    # "blip":Lorg/openxmlformats/schemas/drawingml/x2006/main/CTBlip;
    .end local v29    # "pic":Lorg/openxmlformats/schemas/drawingml/x2006/picture/CTPicture;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1030
    :catch_1
    move-exception v0

    goto :goto_2

    .line 1032
    .end local v16    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .local v7, "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    :catch_2
    move-exception v0

    move-object/from16 v16, v7

    .end local v7    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .restart local v16    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    goto :goto_1

    .line 1030
    .end local v16    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .restart local v7    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    :catch_3
    move-exception v0

    move-object/from16 v16, v7

    .end local v7    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .restart local v16    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    goto :goto_2

    .line 1032
    .end local v16    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .end local v22    # "relationId":Ljava/lang/String;
    .restart local v7    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .local v8, "relationId":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v22, v8

    .line 1033
    .end local v7    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .end local v8    # "relationId":Ljava/lang/String;
    .local v0, "e":Lorg/xml/sax/SAXException;
    .restart local v16    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .restart local v22    # "relationId":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1030
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .end local v16    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .end local v22    # "relationId":Ljava/lang/String;
    .restart local v7    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .restart local v8    # "relationId":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v16, v7

    move-object/from16 v22, v8

    .line 1031
    .end local v7    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .end local v8    # "relationId":Ljava/lang/String;
    .local v0, "e":Lorg/apache/xmlbeans/XmlException;
    .restart local v16    # "picData":Lorg/apache/poi/xwpf/usermodel/XWPFPictureData;
    .restart local v22    # "relationId":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addTab()V
    .locals 1

    .line 891
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewTab()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTEmpty;

    .line 892
    return-void
.end method

.method public getCTR()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;
    .locals 1
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation

    .line 203
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    return-object v0
.end method

.method public getCharacterSpacing()I
    .locals 2

    .line 644
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 645
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSpacing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1

    .line 646
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getColor()Ljava/lang/String;
    .locals 4

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "color":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    .line 302
    .local v1, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object v2

    .line 304
    .local v2, "clr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;
    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;->xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;

    move-result-object v3

    invoke-interface {v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHexColor;->getStringValue()Ljava/lang/String;

    move-result-object v0

    .line 307
    .end local v1    # "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    .end local v2    # "clr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;
    :cond_0
    return-object v0
.end method

.method public getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Lorg/apache/poi/xwpf/usermodel/IRunBody;->getDocument()Lorg/apache/poi/xwpf/usermodel/XWPFDocument;

    move-result-object v0

    return-object v0

    .line 234
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEmbeddedPictures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/xwpf/usermodel/XWPFPicture;",
            ">;"
        }
    .end annotation

    .line 1043
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictures:Ljava/util/List;

    return-object v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getFontFamily(Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontFamily(Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)Ljava/lang/String;
    .locals 4
    .param p1, "fcr"    # Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    .line 696
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 697
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetRFonts()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 699
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v1

    .line 700
    .local v1, "fonts":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange:[I

    if-nez p1, :cond_1

    sget-object v3, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->ascii:Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    goto :goto_0

    :cond_1
    move-object v3, p1

    :goto_0
    invoke-virtual {v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 703
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getAscii()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 709
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getHAnsi()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 707
    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getEastAsia()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 705
    :cond_4
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->getCs()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 697
    .end local v1    # "fonts":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
    :cond_5
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 685
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getFontFamily()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontSize()I
    .locals 4

    .line 762
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 763
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSz()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "2"

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getKerning()I
    .locals 2

    .line 620
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 621
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetKern()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1

    .line 622
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getParagraph()Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;
    .locals 2

    .line 221
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    instance-of v1, v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    if-eqz v1, :cond_0

    .line 222
    check-cast v0, Lorg/apache/poi/xwpf/usermodel/XWPFParagraph;

    return-object v0

    .line 223
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lorg/apache/poi/xwpf/usermodel/IRunBody;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->parent:Lorg/apache/poi/xwpf/usermodel/IRunBody;

    return-object v0
.end method

.method public getPhonetic()Ljava/lang/String;
    .locals 5

    .line 1087
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1091
    .local v0, "text":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 1092
    .local v1, "c":Lorg/apache/xmlbeans/XmlCursor;
    const-string v2, "./*"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 1093
    :goto_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1094
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 1095
    .local v2, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    if-eqz v3, :cond_0

    .line 1096
    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->handleRuby(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;Z)V

    .line 1098
    .end local v2    # "o":Lorg/apache/xmlbeans/XmlObject;
    :cond_0
    goto :goto_0

    .line 1100
    :cond_1
    iget-object v2, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 1101
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1103
    :cond_2
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 1104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getPictureText()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->pictureText:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscript()Lorg/apache/poi/xwpf/usermodel/VerticalAlign;
    .locals 2

    .line 593
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 594
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetVertAlign()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->BASELINE:Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    :goto_0
    return-object v1
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .line 327
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object v0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->getStringValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTextPosition()I
    .locals 2

    .line 794
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 795
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetPosition()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;->getVal()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getUnderline()Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 414
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetU()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->valueOf(I)Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->NONE:Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    :goto_0
    return-object v1
.end method

.method public isBold()Z
    .locals 2

    .line 258
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 259
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetB()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v1

    return v1

    .line 260
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isCapitalized()Z
    .locals 2

    .line 532
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 533
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetCaps()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 535
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v1

    return v1

    .line 534
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDoubleStrikeThrough()Z
    .locals 2

    .line 500
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 501
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetDstrike()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v1

    return v1

    .line 502
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isEmbossed()Z
    .locals 2

    .line 571
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 572
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetEmboss()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 574
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v1

    return v1

    .line 573
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isHighlighted()Z
    .locals 4

    .line 633
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 634
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetHighlight()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getHighlight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;

    move-result-object v2

    invoke-interface {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHighlight;->getVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    move-result-object v2

    sget-object v3, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor;->NONE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STHighlightColor$Enum;

    if-ne v2, v3, :cond_1

    .line 637
    return v1

    .line 638
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 635
    :cond_2
    :goto_0
    return v1
.end method

.method public isImprinted()Z
    .locals 2

    .line 558
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 559
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetImprint()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v1

    return v1

    .line 560
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isItalic()Z
    .locals 2

    .line 368
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 369
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetI()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v1

    return v1

    .line 370
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isShadowed()Z
    .locals 2

    .line 545
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 546
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetShadow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v1

    return v1

    .line 547
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSmallCaps()Z
    .locals 2

    .line 519
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 520
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSmallCaps()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 522
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v1

    return v1

    .line 521
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public isStrike()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 485
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isStrikeThrough()Z

    move-result v0

    return v0
.end method

.method public isStrikeThrough()Z
    .locals 2

    .line 447
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 448
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetStrike()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->isCTOnOff(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)Z

    move-result v1

    return v1

    .line 449
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeBreak()V
    .locals 0

    .line 833
    return-void
.end method

.method public removeCarriageReturn()V
    .locals 0

    .line 916
    return-void
.end method

.method public removeTab()V
    .locals 0

    .line 896
    return-void
.end method

.method public setBold(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 290
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 291
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetB()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewB()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 292
    .local v1, "bold":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 293
    return-void
.end method

.method public setCapitalized(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 539
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 540
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetCaps()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 541
    .local v1, "caps":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 542
    return-void
.end method

.method public setCharacterSpacing(I)V
    .locals 4
    .param p1, "twips"    # I

    .line 651
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 652
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSpacing()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSpacing()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;

    move-result-object v1

    .line 653
    .local v1, "spc":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
    :goto_1
    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;->setVal(Ljava/math/BigInteger;)V

    .line 654
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "rgbStr"    # Ljava/lang/String;

    .line 316
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 317
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetColor()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewColor()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;

    move-result-object v1

    .line 318
    .local v1, "color":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;
    :goto_1
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTColor;->setVal(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public setDoubleStrikethrough(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 513
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 514
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetDstrike()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewDstrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 515
    .local v1, "dstrike":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 516
    return-void
.end method

.method public setEmbossed(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 578
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 579
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetEmboss()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewEmboss()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 580
    .local v1, "emboss":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 581
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 1
    .param p1, "fontFamily"    # Ljava/lang/String;

    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setFontFamily(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)V

    .line 679
    return-void
.end method

.method public setFontFamily(Ljava/lang/String;Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;)V
    .locals 4
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "fcr"    # Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;

    .line 723
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 724
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetRFonts()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewRFonts()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;

    move-result-object v1

    .line 726
    .local v1, "fonts":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;
    :goto_1
    if-nez p2, :cond_4

    .line 727
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAscii(Ljava/lang/String;)V

    .line 728
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetHAnsi()Z

    move-result v2

    if-nez v2, :cond_2

    .line 729
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsi(Ljava/lang/String;)V

    .line 731
    :cond_2
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetCs()Z

    move-result v2

    if-nez v2, :cond_3

    .line 732
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCs(Ljava/lang/String;)V

    .line 734
    :cond_3
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->isSetEastAsia()Z

    move-result v2

    if-nez v2, :cond_9

    .line 735
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setEastAsia(Ljava/lang/String;)V

    goto :goto_2

    .line 738
    :cond_4
    sget-object v2, Lorg/apache/poi/xwpf/usermodel/XWPFRun$1;->$SwitchMap$org$apache$poi$xwpf$usermodel$XWPFRun$FontCharRange:[I

    invoke-virtual {p2}, Lorg/apache/poi/xwpf/usermodel/XWPFRun$FontCharRange;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    goto :goto_2

    .line 749
    :cond_5
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setHAnsi(Ljava/lang/String;)V

    goto :goto_2

    .line 746
    :cond_6
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setEastAsia(Ljava/lang/String;)V

    .line 747
    goto :goto_2

    .line 743
    :cond_7
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setCs(Ljava/lang/String;)V

    .line 744
    goto :goto_2

    .line 740
    :cond_8
    invoke-interface {v1, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTFonts;->setAscii(Ljava/lang/String;)V

    .line 741
    nop

    .line 753
    :cond_9
    :goto_2
    return-void
.end method

.method public setFontSize(I)V
    .locals 5
    .param p1, "size"    # I

    .line 779
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 780
    .local v0, "bint":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    .line 781
    .local v1, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSz()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSz()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v2

    .line 782
    .local v2, "ctSize":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
    :goto_1
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "2"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    .line 783
    return-void
.end method

.method public setImprinted(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 565
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 566
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetImprint()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewImprint()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 567
    .local v1, "imprinted":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 568
    return-void
.end method

.method public setItalic(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 400
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 401
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetI()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewI()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 402
    .local v1, "italic":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 403
    return-void
.end method

.method public setKerning(I)V
    .locals 4
    .param p1, "kern"    # I

    .line 627
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 628
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetKern()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewKern()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;

    move-result-object v1

    .line 629
    .local v1, "kernmes":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;
    :goto_1
    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    .line 630
    return-void
.end method

.method public setShadow(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 552
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 553
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetShadow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewShadow()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 554
    .local v1, "shadow":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 555
    return-void
.end method

.method public setSmallCaps(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 526
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 527
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetSmallCaps()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewSmallCaps()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 528
    .local v1, "caps":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 529
    return-void
.end method

.method public setStrike(Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 490
    invoke-virtual {p0, p1}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setStrikeThrough(Z)V

    .line 491
    return-void
.end method

.method public setStrikeThrough(Z)V
    .locals 3
    .param p1, "value"    # Z

    .line 478
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 479
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetStrike()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewStrike()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;

    move-result-object v1

    .line 480
    .local v1, "strike":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
    :goto_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->TRUE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    goto :goto_2

    :cond_2
    sget-object v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff;->FALSE:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;

    :goto_2
    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STOnOff$Enum;)V

    .line 481
    return-void
.end method

.method public setSubscript(Lorg/apache/poi/xwpf/usermodel/VerticalAlign;)V
    .locals 3
    .param p1, "valign"    # Lorg/apache/poi/xwpf/usermodel/VerticalAlign;

    .line 614
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 615
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetVertAlign()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewVertAlign()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;

    move-result-object v1

    .line 616
    .local v1, "ctValign":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/VerticalAlign;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTVerticalAlignRun;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STVerticalAlignRun$Enum;)V

    .line 617
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->setText(Ljava/lang/String;I)V

    .line 345
    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "pos"    # I

    .line 354
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 356
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->sizeOfTArray()I

    move-result v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getTArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewT()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;

    move-result-object v0

    .line 357
    .local v0, "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
    :goto_0
    invoke-interface {v0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;->setStringValue(Ljava/lang/String;)V

    .line 358
    invoke-static {v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->preserveSpaces(Lorg/apache/xmlbeans/XmlString;)V

    .line 359
    return-void

    .line 355
    .end local v0    # "t":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTText;
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Value too large for the parameter position in XWPFRun.setText(String value,int pos)"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextPosition(I)V
    .locals 3
    .param p1, "val"    # I

    .line 822
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 823
    .local v0, "bint":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v1

    .line 824
    .local v1, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->isSetPosition()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewPosition()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;

    move-result-object v2

    .line 825
    .local v2, "position":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;
    :goto_1
    invoke-interface {v2, v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedHpsMeasure;->setVal(Ljava/math/BigInteger;)V

    .line 826
    return-void
.end method

.method public setUnderline(Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;)V
    .locals 3
    .param p1, "value"    # Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;

    .line 435
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->isSetRPr()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->getRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->addNewRPr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;

    move-result-object v0

    .line 436
    .local v0, "pr":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;
    :goto_0
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->addNewU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRPr;->getU()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;

    move-result-object v1

    .line 437
    .local v1, "underline":Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;
    :goto_1
    invoke-virtual {p1}, Lorg/apache/poi/xwpf/usermodel/UnderlinePatterns;->getValue()I

    move-result v2

    invoke-static {v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;->forInt(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTUnderline;->setVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STUnderline$Enum;)V

    .line 438
    return-void
.end method

.method public text()Ljava/lang/String;
    .locals 4

    .line 1063
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1067
    .local v0, "text":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->run:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;

    invoke-interface {v1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTR;->newCursor()Lorg/apache/xmlbeans/XmlCursor;

    move-result-object v1

    .line 1068
    .local v1, "c":Lorg/apache/xmlbeans/XmlCursor;
    const-string v2, "./*"

    invoke-interface {v1, v2}, Lorg/apache/xmlbeans/XmlCursor;->selectPath(Ljava/lang/String;)V

    .line 1069
    :goto_0
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->toNextSelection()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1070
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->getObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    .line 1071
    .local v2, "o":Lorg/apache/xmlbeans/XmlObject;
    instance-of v3, v2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTRuby;

    if-eqz v3, :cond_0

    .line 1072
    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->handleRuby(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;Z)V

    .line 1073
    goto :goto_0

    .line 1075
    :cond_0
    invoke-direct {p0, v2, v0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->_getText(Lorg/apache/xmlbeans/XmlObject;Ljava/lang/StringBuffer;)V

    .line 1076
    .end local v2    # "o":Lorg/apache/xmlbeans/XmlObject;
    goto :goto_0

    .line 1077
    :cond_1
    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlCursor;->dispose()V

    .line 1078
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1050
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->getPhonetic()Ljava/lang/String;

    move-result-object v0

    .line 1051
    .local v0, "phonetic":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1054
    :cond_0
    invoke-virtual {p0}, Lorg/apache/poi/xwpf/usermodel/XWPFRun;->text()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
