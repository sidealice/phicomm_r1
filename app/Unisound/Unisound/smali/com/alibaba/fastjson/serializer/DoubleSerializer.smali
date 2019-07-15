.class public Lcom/alibaba/fastjson/serializer/DoubleSerializer;
.super Ljava/lang/Object;
.source "DoubleSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DoubleSerializer;


# instance fields
.field private decimalFormat:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DoubleSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->instance:Lcom/alibaba/fastjson/serializer/DoubleSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->decimalFormat:Ljava/text/DecimalFormat;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "decimalFormat"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/DoubleSerializer;-><init>(Ljava/text/DecimalFormat;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/text/DecimalFormat;)V
    .locals 1
    .param p1, "decimalFormat"    # Ljava/text/DecimalFormat;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->decimalFormat:Ljava/text/DecimalFormat;

    .line 36
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->decimalFormat:Ljava/text/DecimalFormat;

    .line 37
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    .line 46
    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_2

    .line 47
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 48
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 77
    .end local p2    # "object":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 50
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 55
    :cond_2
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "object":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 57
    .local v2, "doubleValue":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 58
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 59
    :cond_3
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 63
    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->decimalFormat:Ljava/text/DecimalFormat;

    if-nez v4, :cond_6

    .line 64
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "doubleText":Ljava/lang/String;
    const-string v4, ".0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 71
    :cond_5
    :goto_1
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 73
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const/16 v4, 0x44

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 69
    .end local v0    # "doubleText":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/DoubleSerializer;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v4, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "doubleText":Ljava/lang/String;
    goto :goto_1
.end method
