.class public Lcom/alibaba/fastjson/serializer/ArraySerializer;
.super Ljava/lang/Object;
.source "ArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V
    .locals 0
    .param p2, "compObjectSerializer"    # Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    .line 31
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 32
    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 10
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
    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v5

    .line 38
    .local v5, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_1

    .line 39
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 40
    const-string v7, "[]"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    :cond_1
    move-object v7, p2

    .line 47
    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 48
    .local v0, "array":[Ljava/lang/Object;
    array-length v6, v0

    .line 50
    .local v6, "size":I
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v1

    .line 51
    .local v1, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v7, 0x0

    invoke-virtual {p1, v1, p2, p3, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 54
    const/16 v7, 0x5b

    :try_start_0
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_5

    .line 56
    if-eqz v2, :cond_2

    .line 57
    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 59
    :cond_2
    aget-object v3, v0, v2

    .line 61
    .local v3, "item":Ljava/lang/Object;
    if-nez v3, :cond_3

    .line 62
    const-string v7, "null"

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 55
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->componentType:Ljava/lang/Class;

    if-ne v7, v8, :cond_4

    .line 64
    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/ArraySerializer;->compObjectSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, p1, v3, v8, v9}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 72
    .end local v2    # "i":I
    .end local v3    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    throw v7

    .line 66
    .restart local v2    # "i":I
    .restart local v3    # "item":Ljava/lang/Object;
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 67
    .local v4, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v4, p1, v3, v7, v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_2

    .line 70
    .end local v3    # "item":Ljava/lang/Object;
    .end local v4    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_5
    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V

    goto :goto_0
.end method
