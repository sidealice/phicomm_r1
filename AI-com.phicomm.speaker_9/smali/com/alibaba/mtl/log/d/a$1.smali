.class Lcom/alibaba/mtl/log/d/a$1;
.super Lcom/alibaba/mtl/log/d/b;
.source "UploadEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/mtl/log/d/a;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/mtl/log/d/a;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/log/d/a;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/mtl/log/d/a$1;->b:Lcom/alibaba/mtl/log/d/a;

    invoke-direct {p0}, Lcom/alibaba/mtl/log/d/b;-><init>()V

    return-void
.end method


# virtual methods
.method public K()V
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/a$1;->b:Lcom/alibaba/mtl/log/d/a;

    invoke-static {v0}, Lcom/alibaba/mtl/log/d/a;->a(Lcom/alibaba/mtl/log/d/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lcom/alibaba/mtl/log/b/a;->E()V

    .line 38
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/a$1;->b:Lcom/alibaba/mtl/log/d/a;

    invoke-static {v0}, Lcom/alibaba/mtl/log/d/a;->a(Lcom/alibaba/mtl/log/d/a;)J

    const-string v0, "UploadTask"

    const/4 v1, 0x2

    .line 39
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "mPeriod:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/mtl/log/d/a$1;->b:Lcom/alibaba/mtl/log/d/a;

    iget-wide v4, v4, Lcom/alibaba/mtl/log/d/a;->z:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/e/r;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/log/e/r;->f(I)V

    .line 43
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/log/d/b;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-static {}, Lcom/alibaba/mtl/log/e/r;->a()Lcom/alibaba/mtl/log/e/r;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/mtl/log/d/a$1;->b:Lcom/alibaba/mtl/log/d/a;

    iget-wide v2, v2, Lcom/alibaba/mtl/log/d/a;->z:J

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/alibaba/mtl/log/e/r;->a(ILjava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public L()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/mtl/log/d/a$1;->b:Lcom/alibaba/mtl/log/d/a;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/d/a;->J()V

    return-void
.end method
