.class public Lcom/alibaba/fastjson/serializer/ShortArraySerializer;
.super Ljava/lang/Object;
.source "ShortArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/ShortArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/ShortArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ShortArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ShortArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/ShortArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
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
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v2

    .line 31
    .local v2, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_1

    .line 32
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    const-string v3, "[]"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 49
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 35
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 40
    :cond_1
    check-cast p2, [S

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [S

    .line 41
    .local v0, "array":[S
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_3

    .line 43
    if-eqz v1, :cond_2

    .line 44
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 46
    :cond_2
    aget-short v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 48
    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0
.end method
