.class public final Lcom/alibaba/fastjson/serializer/ListSerializer;
.super Ljava/lang/Object;
.source "ListSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 35
    iget-object v4, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 37
    iget v5, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 41
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    :cond_1
    if-nez v2, :cond_3

    .line 45
    iget v1, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const-string v1, "[]"

    .line 46
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_1
    return-void

    .line 53
    :cond_3
    move-object v9, v2

    check-cast v9, Ljava/util/List;

    .line 54
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    const-string v1, "[]"

    .line 57
    invoke-virtual {v4, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-void

    .line 61
    :cond_4
    iget-object v11, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 63
    iget v12, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v12, v13

    if-nez v12, :cond_6

    .line 64
    new-instance v12, Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-direct {v12, v11, v2, v3, v6}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v12, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 65
    iget-object v12, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v12, :cond_5

    .line 66
    new-instance v12, Ljava/util/IdentityHashMap;

    invoke-direct {v12}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v12, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 68
    :cond_5
    iget-object v12, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    iget-object v13, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v12, v2, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_6
    :try_start_0
    iget v12, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v12, v13

    const/16 v13, 0x5d

    const/16 v14, 0x2c

    const/16 v15, 0x5b

    if-eqz v12, :cond_b

    .line 74
    invoke-virtual {v4, v15}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    move v5, v6

    :goto_2
    if-ge v5, v10, :cond_a

    .line 78
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v5, :cond_7

    .line 80
    invoke-virtual {v4, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    if-eqz v7, :cond_9

    .line 85
    iget-object v12, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v12, :cond_8

    iget-object v12, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v12, v7}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 86
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_3

    .line 88
    :cond_8
    iget-object v12, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v12

    .line 89
    new-instance v15, Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-direct {v15, v11, v2, v3, v6}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 90
    iput-object v15, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 91
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v1, v7, v15, v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto :goto_3

    .line 94
    :cond_9
    iget-object v7, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 98
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 100
    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    iput-object v11, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    .line 106
    :cond_b
    :try_start_1
    iget v10, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v10, v7

    .line 107
    iget-object v12, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v12, v12

    if-le v10, v12, :cond_d

    .line 108
    iget-object v12, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v12, :cond_c

    .line 109
    invoke-virtual {v4, v10}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 111
    :cond_c
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    move v10, v7

    .line 115
    :cond_d
    :goto_4
    iget-object v12, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v13, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v15, v12, v13

    .line 116
    iput v10, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move v10, v6

    .line 118
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_19

    .line 119
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v10, :cond_10

    .line 123
    iget v13, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v13, v7

    .line 124
    iget-object v15, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v15, v15

    if-le v13, v15, :cond_f

    .line 125
    iget-object v15, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v15, :cond_e

    .line 126
    invoke-virtual {v4, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_6

    .line 128
    :cond_e
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    move v13, v7

    .line 132
    :cond_f
    :goto_6
    iget-object v15, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v6, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    aput-char v14, v15, v6

    .line 133
    iput v13, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    :cond_10
    if-nez v12, :cond_11

    const-string v6, "null"

    .line 138
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    :goto_7
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 140
    :cond_11
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 142
    const-class v13, Ljava/lang/Integer;

    if-ne v6, v13, :cond_12

    .line 143
    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_7

    .line 144
    :cond_12
    const-class v13, Ljava/lang/Long;

    if-ne v6, v13, :cond_14

    .line 145
    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    if-eqz v5, :cond_13

    .line 147
    invoke-virtual {v4, v12, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v6, 0x4c

    .line 148
    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    .line 150
    :cond_13
    invoke-virtual {v4, v12, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_7

    .line 152
    :cond_14
    const-class v13, Ljava/lang/String;

    if-ne v6, v13, :cond_16

    .line 153
    check-cast v12, Ljava/lang/String;

    .line 155
    iget v6, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v13

    if-eqz v6, :cond_15

    .line 156
    invoke-virtual {v4, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    const/4 v6, 0x0

    .line 158
    invoke-virtual {v4, v12, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_7

    .line 161
    :cond_16
    iget v6, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v13

    if-nez v6, :cond_17

    .line 162
    new-instance v6, Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v13, 0x0

    invoke-direct {v6, v11, v2, v3, v13}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 163
    iput-object v6, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_8

    :cond_17
    const/4 v13, 0x0

    .line 166
    :goto_8
    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v6, :cond_18

    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v12}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 167
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_9

    .line 169
    :cond_18
    iget-object v6, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v6, v15}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->get(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v6

    .line 170
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v1, v12, v15, v8}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move v6, v13

    goto/16 :goto_5

    .line 177
    :cond_19
    iget v2, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v7

    .line 178
    iget-object v3, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    array-length v3, v3

    if-le v2, v3, :cond_1b

    .line 179
    iget-object v3, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_1a

    .line 180
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_a

    .line 182
    :cond_1a
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    move v2, v7

    .line 186
    :cond_1b
    :goto_a
    iget-object v3, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v5, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v6, 0x5d

    aput-char v6, v3, v5

    .line 187
    iput v2, v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    iput-object v11, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    iput-object v11, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v2
.end method
