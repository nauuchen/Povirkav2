.class public final Lorg/apache/poi/util/POILogFactory;
.super Ljava/lang/Object;
.source "POILogFactory.java"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static _loggerClassName:Ljava/lang/String;

.field private static final _loggers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/poi/util/POILogger;",
            ">;"
        }
    .end annotation
.end field

.field private static final _nullLogger:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    .line 44
    new-instance v0, Lorg/apache/poi/util/NullLogger;

    invoke-direct {v0}, Lorg/apache/poi/util/NullLogger;-><init>()V

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/apache/poi/util/POILogger;"
        }
    .end annotation

    .line 64
    .local p0, "theclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/String;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/apache/poi/util/POILogger;
    .locals 3
    .param p0, "cat"    # Ljava/lang/String;

    .line 80
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    :try_start_0
    const-string v0, "org.apache.poi.util.POILogger"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 89
    :goto_0
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    .line 96
    :cond_0
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    return-object v1

    .line 103
    :cond_1
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/util/POILogger;

    .line 104
    .local v0, "logger":Lorg/apache/poi/util/POILogger;
    if-nez v0, :cond_2

    .line 107
    :try_start_1
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 109
    .local v1, "loggerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/util/POILogger;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/poi/util/POILogger;

    move-object v0, v2

    .line 110
    invoke-virtual {v0, p0}, Lorg/apache/poi/util/POILogger;->initialize(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    .end local v1    # "loggerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/poi/util/POILogger;>;"
    goto :goto_1

    .line 111
    :catch_1
    move-exception v1

    .line 113
    .local v1, "e":Ljava/lang/Exception;
    sget-object v0, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    .line 114
    sget-object v2, Lorg/apache/poi/util/POILogFactory;->_nullLogger:Lorg/apache/poi/util/POILogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/poi/util/POILogFactory;->_loggerClassName:Ljava/lang/String;

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    sget-object v1, Lorg/apache/poi/util/POILogFactory;->_loggers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_2
    return-object v0
.end method
