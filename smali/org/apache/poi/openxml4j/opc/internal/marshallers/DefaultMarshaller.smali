.class public final Lorg/apache/poi/openxml4j/opc/internal/marshallers/DefaultMarshaller;
.super Ljava/lang/Object;
.source "DefaultMarshaller.java"

# interfaces
.implements Lorg/apache/poi/openxml4j/opc/internal/PartMarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public marshall(Lorg/apache/poi/openxml4j/opc/PackagePart;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "part"    # Lorg/apache/poi/openxml4j/opc/PackagePart;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/poi/openxml4j/exceptions/OpenXML4JException;
        }
    .end annotation

    .line 43
    invoke-virtual {p1, p2}, Lorg/apache/poi/openxml4j/opc/PackagePart;->save(Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
