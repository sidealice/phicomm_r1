.class public Lcom/tencent/bugly/proguard/c;
.super Lcom/tencent/bugly/proguard/a;
.source "BUGLY"


# instance fields
.field protected d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/tencent/bugly/proguard/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/a;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    .line 23
    new-instance v0, Lcom/tencent/bugly/proguard/i;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put key can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put value can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can not support Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    new-instance v0, Lcom/tencent/bugly/proguard/j;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    .line 90
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/Object;I)V

    .line 92
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/tencent/bugly/proguard/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 400
    :try_start_0
    invoke-super {p0, p1}, Lcom/tencent/bugly/proguard/a;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/i;->a([B)V

    .line 404
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 405
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 406
    const-string v1, ""

    new-array v2, v3, [B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v1, v0, v3, v3}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public a()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 366
    new-instance v0, Lcom/tencent/bugly/proguard/j;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/proguard/j;-><init>(I)V

    .line 367
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/j;->a(Ljava/lang/String;)I

    .line 368
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/j;->a(Ljava/util/Map;I)V

    .line 369
    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/j;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/proguard/l;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/tencent/bugly/proguard/a;->a()[B

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/bugly/proguard/b;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 138
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 139
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-object v0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/i;->a([B)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Lcom/tencent/bugly/proguard/b;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 162
    new-array v1, v2, [B

    .line 164
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 166
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 167
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/i;->a([B)V

    .line 171
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/tencent/bugly/proguard/c;->f:Lcom/tencent/bugly/proguard/i;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/tencent/bugly/proguard/c;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 175
    :catch_1
    move-exception v0

    .line 176
    new-instance v1, Lcom/tencent/bugly/proguard/b;

    invoke-direct {v1, v0}, Lcom/tencent/bugly/proguard/b;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/c;->d:Ljava/util/HashMap;

    .line 31
    return-void
.end method
