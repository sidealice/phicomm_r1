.class public Lcom/alibaba/mtl/log/model/a;
.super Ljava/lang/Object;
.source "Log.java"


# instance fields
.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public id:I

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3"

    .line 33
    iput-object v0, p0, Lcom/alibaba/mtl/log/model/a;->U:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "3"

    .line 33
    iput-object v0, p0, Lcom/alibaba/mtl/log/model/a;->U:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/alibaba/mtl/log/model/a;->T:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/alibaba/mtl/log/model/a;->u:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/alibaba/mtl/log/model/a;->v:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/alibaba/mtl/log/model/a;->w:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/alibaba/mtl/log/model/a;->x:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/alibaba/mtl/log/model/a;->k:Ljava/util/Map;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/mtl/log/model/a;->s()V

    return-void
.end method


# virtual methods
.method public h()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mtl/log/model/a;->V:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/e/c;->decode([BI)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    .line 96
    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/e/n;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 97
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :catch_0
    :cond_0
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/mtl/log/model/a;->V:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 136
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const-string v1, "QrMgt8GGYI6T52ZY5AnhtxkLzb8egpFn3j5JELI8H6wtACbUnZ5cc3aYTsTRbmkAkRJeYbtx92LPBWm7nBO9UIl7y5i5MQNmUZNf5QENurR5tGyo7yJ2G0MBjWvy6iAtlAbacKP0SwOUeUWx5dsBdyhxa7Id1APtybSdDgicBDuNjI0mlZFUzZSS9dmN8lBD0WTVOMz0pRZbR3cysomRXOO1ghqjJdTcyDIxzpNAEszN8RMGjrzyU7Hjbmwi6YNK"

    invoke-static {p1, v1}, Lcom/alibaba/mtl/log/e/n;->a([BLjava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/alibaba/mtl/log/e/c;->encode([BI)[B

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/mtl/log/model/a;->V:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/alibaba/mtl/log/model/a;->V:Ljava/lang/String;

    return-void
.end method

.method public s()V
    .locals 9

    .line 158
    iget-object v0, p0, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mtl/log/model/a;->u:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/log/model/a;->T:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/log/model/a;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/mtl/log/model/a;->w:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/mtl/log/model/a;->x:Ljava/lang/String;

    iget-object v6, p0, Lcom/alibaba/mtl/log/model/a;->k:Ljava/util/Map;

    iget-object v7, p0, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    iget-object v8, p0, Lcom/alibaba/mtl/log/model/a;->W:Ljava/lang/String;

    invoke-static/range {v1 .. v8}, Lcom/alibaba/mtl/log/e/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTLog"

    const/4 v2, 0x2

    .line 162
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/log/model/a;->j(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/mtl/log/model/a;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/mtl/log/model/a;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/mtl/log/model/a;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
