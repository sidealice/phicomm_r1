.class Lcom/alibaba/mtl/log/c/c$a;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mtl/log/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/mtl/log/c/c;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/log/c/c;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alibaba/mtl/log/c/c$a;->b:Lcom/alibaba/mtl/log/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c$a;->b:Lcom/alibaba/mtl/log/c/c;

    invoke-static {v0}, Lcom/alibaba/mtl/log/c/c;->a(Lcom/alibaba/mtl/log/c/c;)V

    .line 138
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c$a;->b:Lcom/alibaba/mtl/log/c/c;

    invoke-static {v0}, Lcom/alibaba/mtl/log/c/c;->a(Lcom/alibaba/mtl/log/c/c;)Lcom/alibaba/mtl/log/c/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/mtl/log/c/a;->g()I

    move-result v0

    const/16 v1, 0x2328

    if-le v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c$a;->b:Lcom/alibaba/mtl/log/c/c;

    invoke-static {v0}, Lcom/alibaba/mtl/log/c/c;->b(Lcom/alibaba/mtl/log/c/c;)V

    :cond_0
    return-void
.end method
