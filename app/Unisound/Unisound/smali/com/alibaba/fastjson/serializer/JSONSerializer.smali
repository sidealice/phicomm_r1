.class public Lcom/alibaba/fastjson/serializer/JSONSerializer;
.super Ljava/lang/Object;
.source "JSONSerializer.java"


# instance fields
.field private afterFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation
.end field

.field private beforeFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private context:Lcom/alibaba/fastjson/serializer/SerialContext;

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field private indent:Ljava/lang/String;

.field private indentCount:I

.field private nameFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

.field private propertyFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation
.end field

.field private propertyPreFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyPreFilter;",
            ">;"
        }
    .end annotation
.end field

.field private references:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerialContext;",
            ">;"
        }
    .end annotation
.end field

.field private valueFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .prologue
    .line 73
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
    .locals 1
    .param p1, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .prologue
    .line 69
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 2
    .param p1, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .param p2, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    .line 49
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    .line 51
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    .line 52
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    .line 53
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    .line 56
    const-string v0, "\t"

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indent:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 77
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 78
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 79
    return-void
.end method

.method public static final write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Object;)V
    .locals 1
    .param p0, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 337
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 338
    .local v0, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 339
    return-void
.end method

.method public static final write(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 5
    .param p0, "out"    # Ljava/io/Writer;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 324
    new-instance v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 326
    .local v2, "writer":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 327
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 334
    return-void

    .line 329
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 473
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 309
    return-void
.end method

.method public containsReference(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public decrementIdent()V
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    .line 230
    return-void
.end method

.method public getAfterFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    return-object v0
.end method

.method public getAfterFiltersDirect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/AfterFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    return-object v0
.end method

.method public getBeforeFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    return-object v0
.end method

.method public getBeforeFiltersDirect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/BeforeFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    return-object v0
.end method

.method public getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getDateFormatPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    instance-of v0, v0, Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIndentCount()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    return v0
.end method

.method public getMapping()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method public getNameFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    return-object v0
.end method

.method public getNameFiltersDirect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/NameFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v11, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 406
    .local v10, "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    if-nez v10, :cond_0

    .line 407
    const-class v11, Ljava/util/Map;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 408
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 466
    :goto_0
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v11, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    check-cast v10, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .restart local v10    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :cond_0
    move-object v9, v10

    .line 468
    :goto_1
    return-object v9

    .line 409
    :cond_1
    const-class v11, Ljava/util/List;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 410
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/ListSerializer;->instance:Lcom/alibaba/fastjson/serializer/ListSerializer;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 411
    :cond_2
    const-class v11, Ljava/util/Collection;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 412
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/CollectionSerializer;->instance:Lcom/alibaba/fastjson/serializer/CollectionSerializer;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 413
    :cond_3
    const-class v11, Ljava/util/Date;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 414
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/DateSerializer;->instance:Lcom/alibaba/fastjson/serializer/DateSerializer;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    :cond_4
    const-class v11, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 416
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONAwareSerializer;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_5
    const-class v11, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 418
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONSerializableSerializer;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 419
    :cond_6
    const-class v11, Lcom/alibaba/fastjson/JSONStreamAware;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 420
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;->instance:Lcom/alibaba/fastjson/serializer/JSONStreamAwareSerializer;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 422
    :cond_8
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/EnumSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumSerializer;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 423
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 424
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 425
    .local v2, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 426
    .local v1, "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    new-instance v12, Lcom/alibaba/fastjson/serializer/ArraySerializer;

    invoke-direct {v12, v2, v1}, Lcom/alibaba/fastjson/serializer/ArraySerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/ObjectSerializer;)V

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 427
    .end local v1    # "compObjectSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v2    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    const-class v11, Ljava/lang/Throwable;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 428
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    new-instance v12, Lcom/alibaba/fastjson/serializer/ExceptionSerializer;

    invoke-direct {v12, p1}, Lcom/alibaba/fastjson/serializer/ExceptionSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 429
    :cond_b
    const-class v11, Ljava/util/TimeZone;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 430
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/TimeZoneCodec;->instance:Lcom/alibaba/fastjson/serializer/TimeZoneCodec;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 431
    :cond_c
    const-class v11, Ljava/nio/charset/Charset;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 432
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/CharsetCodec;->instance:Lcom/alibaba/fastjson/serializer/CharsetCodec;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 433
    :cond_d
    const-class v11, Ljava/util/Enumeration;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 434
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/EnumerationSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/EnumerationSeriliazer;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 435
    :cond_e
    const-class v11, Ljava/util/Calendar;

    invoke-virtual {v11, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 436
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget-object v12, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 438
    :cond_f
    const/4 v4, 0x0

    .line 439
    .local v4, "isCglibProxy":Z
    const/4 v5, 0x0

    .line 440
    .local v5, "isJavassistProxy":Z
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v7, :cond_11

    aget-object v6, v0, v3

    .line 441
    .local v6, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "net.sf.cglib.proxy.Factory"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "org.springframework.cglib.proxy.Factory"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 443
    :cond_10
    const/4 v4, 0x1

    .line 451
    .end local v6    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    :goto_3
    if-nez v4, :cond_12

    if-eqz v5, :cond_15

    .line 452
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .line 454
    .local v8, "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v9

    .line 455
    .local v9, "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v11, p1, v9}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 445
    .end local v8    # "superClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "superWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v6    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_13
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "javassist.util.proxy.ProxyObject"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 446
    const/4 v5, 0x1

    .line 447
    goto :goto_3

    .line 440
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 459
    .end local v6    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 460
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v12, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v12, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 462
    :cond_16
    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v12, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v12, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v12

    invoke-virtual {v11, p1, v12}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getPropertyFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyFiltersDirect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyPreFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyPreFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPropertyPreFiltersDirect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/PropertyPreFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    return-object v0
.end method

.method public getSerialContext(Ljava/lang/Object;)Lcom/alibaba/fastjson/serializer/SerialContext;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_0
.end method

.method public getValueFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    return-object v0
.end method

.method public getValueFiltersDirect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/serializer/ValueFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    return-object v0
.end method

.method public getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-object v0
.end method

.method public incrementIndent()V
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    .line 226
    return-void
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    return v0
.end method

.method public final isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "fieldType"    # Ljava/lang/reflect/Type;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    .line 135
    .local v1, "result":Z
    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 139
    :cond_1
    if-nez p1, :cond_2

    .line 140
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    iget-object v4, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerialContext;->getParent()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v4

    if-nez v4, :cond_3

    move v0, v3

    .line 142
    .local v0, "isRoot":Z
    :goto_1
    if-nez v0, :cond_0

    .end local v0    # "isRoot":Z
    :cond_2
    move v2, v3

    .line 148
    goto :goto_0

    :cond_3
    move v0, v2

    .line 141
    goto :goto_1
.end method

.method public println()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 234
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    if-ge v0, v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
    .locals 0
    .param p1, "context"    # Lcom/alibaba/fastjson/serializer/SerialContext;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 118
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "parent"    # Lcom/alibaba/fastjson/serializer/SerialContext;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "features"    # I

    .prologue
    .line 121
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 126
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    .line 110
    :cond_0
    return-void
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    .line 100
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    .line 103
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/lang/Object;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 342
    if-nez p1, :cond_0

    .line 343
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 355
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 348
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 351
    .local v2, "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, p0, p1, v3, v4}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v1

    .line 353
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final write(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 400
    sget-object v0, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/serializer/StringCodec;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method protected final writeKeyValue(CLjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "seperator"    # C
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 362
    if-eqz p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 367
    return-void
.end method

.method public writeNull()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 317
    return-void
.end method

.method public writeReference(Ljava/lang/Object;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getContext()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v0

    .line 169
    .local v0, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerialContext;->getObject()Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "current":Ljava/lang/Object;
    if-ne p1, v1, :cond_0

    .line 172
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v7, "{\"$ref\":\"@\"}"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerialContext;->getParent()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v2

    .line 178
    .local v2, "parentContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerialContext;->getObject()Ljava/lang/Object;

    move-result-object v6

    if-ne p1, v6, :cond_1

    .line 180
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v7, "{\"$ref\":\"..\"}"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    move-object v5, v0

    .line 187
    .local v5, "rootContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    :goto_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerialContext;->getParent()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v6

    if-nez v6, :cond_2

    .line 193
    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerialContext;->getObject()Ljava/lang/Object;

    move-result-object v6

    if-ne p1, v6, :cond_3

    .line 194
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v7, "{\"$ref\":\"$\"}"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson/serializer/SerialContext;->getParent()Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v5

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getSerialContext(Ljava/lang/Object;)Lcom/alibaba/fastjson/serializer/SerialContext;

    move-result-object v4

    .line 200
    .local v4, "refContext":Lcom/alibaba/fastjson/serializer/SerialContext;
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerialContext;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v7, "{\"$ref\":\""

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 203
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 204
    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .prologue
    .line 358
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 359
    return-void
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .param p3, "fieldType"    # Ljava/lang/reflect/Type;
    .param p4, "features"    # I

    .prologue
    .line 371
    if-nez p1, :cond_0

    .line 372
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 384
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 378
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v2

    .line 380
    .local v2, "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    invoke-interface {v2, p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "writer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 387
    instance-of v2, p1, Ljava/util/Date;

    if-eqz v2, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 389
    .local v0, "dateFormat":Ljava/text/DateFormat;
    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 392
    .restart local v0    # "dateFormat":Ljava/text/DateFormat;
    :cond_0
    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 397
    .end local v0    # "dateFormat":Ljava/text/DateFormat;
    .end local v1    # "text":Ljava/lang/String;
    :goto_0
    return-void

    .line 396
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_0
.end method
