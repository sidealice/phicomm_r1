.class public Lcom/alibaba/fastjson/serializer/FloatArraySerializer;
.super Ljava/lang/Object;
.source "FloatArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/FloatArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/FloatArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/FloatArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/FloatArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/FloatArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 7
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
    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v4

    .line 34
    .local v4, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_1

    .line 35
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 36
    const-string v6, "[]"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 75
    .end local p2    # "object":Ljava/lang/Object;
    :goto_0
    return-void

    .line 38
    .restart local p2    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 43
    :cond_1
    check-cast p2, [F

    .end local p2    # "object":Ljava/lang/Object;
    move-object v0, p2

    check-cast v0, [F

    .line 44
    .local v0, "array":[F
    array-length v5, v0

    .line 46
    .local v5, "size":I
    add-int/lit8 v1, v5, -0x1

    .line 48
    .local v1, "end":I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    .line 49
    const-string v6, "[]"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_0

    .line 53
    :cond_2
    const/16 v6, 0x5b

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 54
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 55
    aget v3, v0, v2

    .line 57
    .local v3, "item":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 58
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 63
    :goto_2
    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 60
    :cond_3
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_2

    .line 66
    .end local v3    # "item":F
    :cond_4
    aget v3, v0, v1

    .line 68
    .restart local v3    # "item":F
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 69
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 74
    :goto_3
    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_0

    .line 71
    :cond_5
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_3
.end method
