.class Lcom/lzy/okgo/e/b$1$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/e/b$1;->a(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/lzy/okgo/e/b$1;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/e/b$1;JJJ)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/lzy/okgo/e/b$1$1;->d:Lcom/lzy/okgo/e/b$1;

    iput-wide p2, p0, Lcom/lzy/okgo/e/b$1$1;->a:J

    iput-wide p4, p0, Lcom/lzy/okgo/e/b$1$1;->b:J

    iput-wide p6, p0, Lcom/lzy/okgo/e/b$1$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 327
    iget-object v0, p0, Lcom/lzy/okgo/e/b$1$1;->d:Lcom/lzy/okgo/e/b$1;

    iget-object v0, v0, Lcom/lzy/okgo/e/b$1;->a:Lcom/lzy/okgo/e/b;

    invoke-static {v0}, Lcom/lzy/okgo/e/b;->a(Lcom/lzy/okgo/e/b;)Lcom/lzy/okgo/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lzy/okgo/e/b$1$1;->d:Lcom/lzy/okgo/e/b$1;

    iget-object v0, v0, Lcom/lzy/okgo/e/b$1;->a:Lcom/lzy/okgo/e/b;

    invoke-static {v0}, Lcom/lzy/okgo/e/b;->a(Lcom/lzy/okgo/e/b;)Lcom/lzy/okgo/b/a;

    move-result-object v1

    iget-wide v2, p0, Lcom/lzy/okgo/e/b$1$1;->a:J

    iget-wide v4, p0, Lcom/lzy/okgo/e/b$1$1;->b:J

    iget-wide v6, p0, Lcom/lzy/okgo/e/b$1$1;->a:J

    long-to-float v0, v6

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v0, v6

    iget-wide v6, p0, Lcom/lzy/okgo/e/b$1$1;->b:J

    long-to-float v6, v6

    div-float v6, v0, v6

    iget-wide v7, p0, Lcom/lzy/okgo/e/b$1$1;->c:J

    invoke-virtual/range {v1 .. v8}, Lcom/lzy/okgo/b/a;->upProgress(JJFJ)V

    :cond_0
    return-void
.end method
