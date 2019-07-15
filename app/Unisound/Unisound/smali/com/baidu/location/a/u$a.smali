.class Lcom/baidu/location/a/u$a;
.super Lcom/baidu/location/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:I

.field final synthetic d:Lcom/baidu/location/a/u;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/baidu/location/a/u;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/baidu/location/a/u$a;->d:Lcom/baidu/location/a/u;

    invoke-direct {p0}, Lcom/baidu/location/d/e;-><init>()V

    iput-boolean v0, p0, Lcom/baidu/location/a/u$a;->a:Z

    iput v0, p0, Lcom/baidu/location/a/u$a;->b:I

    iput v0, p0, Lcom/baidu/location/a/u$a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/a/u$a;->f:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/u$a;->k:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/baidu/location/d/j;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/u$a;->h:Ljava/lang/String;

    iget v0, p0, Lcom/baidu/location/a/u$a;->b:I

    if-eq v0, v6, :cond_0

    invoke-static {}, Lcom/baidu/location/d/j;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/a/u$a;->h:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/location/a/u$a;->i:I

    iget-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/baidu/location/a/u$a;->b:I

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/baidu/location/a/u$a;->k:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cldc["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/baidu/location/a/u$a;->k:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cltr["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "%d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/a/u$a;->k:Ljava/util/Map;

    const-string v2, "trtm"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/baidu/location/a/u$a;->b:I

    if-eq v0, v6, :cond_3

    iget-object v0, p0, Lcom/baidu/location/a/u$a;->k:Ljava/util/Map;

    const-string v1, "qt"

    const-string v2, "cltrg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/u$a;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/baidu/location/a/u$a;->j:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ison"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ison"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/a/u$a;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/location/a/u$a;->k:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/u$a;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    iput-boolean v2, p0, Lcom/baidu/location/a/u$a;->a:Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/a/u$a;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/baidu/location/a/u$a;->o:I

    const/4 v2, 0x4

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/baidu/location/a/u$a;->c:I

    sget v2, Lcom/baidu/location/a/u$a;->o:I

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/baidu/location/a/u$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/a/u$a;->c:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/baidu/location/a/u$a;->c:I

    iput-boolean v5, p0, Lcom/baidu/location/a/u$a;->a:Z

    iput v1, p0, Lcom/baidu/location/a/u$a;->b:I

    iget-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    :cond_3
    iput v1, p0, Lcom/baidu/location/a/u$a;->b:I

    move v0, v1

    :cond_4
    iget v2, p0, Lcom/baidu/location/a/u$a;->b:I

    if-ge v2, v6, :cond_b

    invoke-static {}, Lcom/baidu/location/a/u;->b()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_7

    iget v4, p0, Lcom/baidu/location/a/u$a;->b:I

    if-eq v4, v5, :cond_7

    iget-boolean v4, p0, Lcom/baidu/location/a/u$a;->f:Z

    if-eqz v4, :cond_7

    iput v6, p0, Lcom/baidu/location/a/u$a;->b:I

    :try_start_0
    invoke-static {}, Lcom/baidu/location/a/g;->b()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_2
    if-nez v2, :cond_8

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_9

    :cond_6
    iput-object v3, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/baidu/location/a/u$a;->a:Z

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_2

    :cond_7
    iput v5, p0, Lcom/baidu/location/a/u$a;->b:I

    goto :goto_2

    :cond_8
    const-string v4, "err!"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/baidu/location/a/u$a;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Lcom/baidu/location/d/a;->i:I

    if-lt v0, v2, :cond_4

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/baidu/location/a/u$a;->b:I

    if-eq v0, v5, :cond_a

    invoke-static {}, Lcom/baidu/location/d/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/location/a/u$a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/baidu/location/d/j;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/location/a/u$a;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    move-object v2, v3

    goto :goto_1
.end method
