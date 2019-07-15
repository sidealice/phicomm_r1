.class public Lcom/alibaba/fastjson/JSONWriter;
.super Ljava/lang/Object;
.source "JSONWriter.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field private context:Lcom/alibaba/fastjson/JSONStreamContext;

.field private serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

.field private writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 23
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .line 24
    return-void
.end method

.method private afterWriter()V
    .locals 3

    .prologue
    .line 150
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v1

    .line 155
    .local v1, "state":I
    const/4 v0, -0x1

    .line 156
    .local v0, "newState":I
    packed-switch v1, :pswitch_data_0

    .line 173
    :goto_1
    :pswitch_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONStreamContext;->setState(I)V

    goto :goto_0

    .line 158
    :pswitch_1
    const/16 v0, 0x3eb

    .line 159
    goto :goto_1

    .line 162
    :pswitch_2
    const/16 v0, 0x3ea

    .line 163
    goto :goto_1

    .line 165
    :pswitch_3
    const/16 v0, 0x3ed

    .line 166
    goto :goto_1

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private beforeWrite()V
    .locals 2

    .prologue
    const/16 v1, 0x2c

    .line 127
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    :pswitch_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 142
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private beginStructure()V
    .locals 4

    .prologue
    .line 75
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v0

    .line 76
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 88
    :pswitch_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 90
    :goto_0
    :pswitch_2
    return-void

    .line 81
    :pswitch_3
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private endStructure()V
    .locals 3

    .prologue
    .line 98
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONStreamContext;->getParent()Lcom/alibaba/fastjson/JSONStreamContext;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 100
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-nez v2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONStreamContext;->getState()I

    move-result v1

    .line 105
    .local v1, "state":I
    const/4 v0, -0x1

    .line 106
    .local v0, "newState":I
    packed-switch v1, :pswitch_data_0

    .line 121
    :goto_1
    :pswitch_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONStreamContext;->setState(I)V

    goto :goto_0

    .line 108
    :pswitch_1
    const/16 v0, 0x3eb

    .line 109
    goto :goto_1

    .line 111
    :pswitch_2
    const/16 v0, 0x3ed

    .line 112
    goto :goto_1

    .line 116
    :pswitch_3
    const/16 v0, 0x3ea

    .line 117
    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 184
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .param p2, "state"    # Z

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 28
    return-void
.end method

.method public endArray()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 94
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->endStructure()V

    .line 95
    return-void
.end method

.method public endObject()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->endStructure()V

    .line 41
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    .line 180
    return-void
.end method

.method public startArray()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beginStructure()V

    .line 70
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v2, 0x3ec

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 72
    return-void
.end method

.method public startObject()V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    if-eqz v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beginStructure()V

    .line 34
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONStreamContext;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONStreamContext;-><init>(Lcom/alibaba/fastjson/JSONStreamContext;I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->context:Lcom/alibaba/fastjson/JSONStreamContext;

    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->writer:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 36
    return-void
.end method

.method public writeKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONWriter;->writeObject(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public writeObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beforeWrite()V

    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 62
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->afterWriter()V

    .line 63
    return-void
.end method

.method public writeObject(Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->beforeWrite()V

    .line 54
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONWriter;->serializer:Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONWriter;->afterWriter()V

    .line 57
    return-void
.end method

.method public writeValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONWriter;->writeObject(Ljava/lang/Object;)V

    .line 49
    return-void
.end method
