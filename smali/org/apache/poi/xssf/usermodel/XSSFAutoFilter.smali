.class public final Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;
.super Ljava/lang/Object;
.source "XSSFAutoFilter.java"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/AutoFilter;


# instance fields
.field private _sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;


# direct methods
.method constructor <init>(Lorg/apache/poi/xssf/usermodel/XSSFSheet;)V
    .locals 0
    .param p1, "sheet"    # Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/apache/poi/xssf/usermodel/XSSFAutoFilter;->_sheet:Lorg/apache/poi/xssf/usermodel/XSSFSheet;

    .line 31
    return-void
.end method
