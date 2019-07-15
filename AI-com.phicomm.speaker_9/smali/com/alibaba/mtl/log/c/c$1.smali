.class Lcom/alibaba/mtl/log/c/c$1;
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
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/alibaba/mtl/log/c/c;


# direct methods
.method constructor <init>(Lcom/alibaba/mtl/log/c/c;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/mtl/log/c/c$1;->b:Lcom/alibaba/mtl/log/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/mtl/log/c/c$1;->b:Lcom/alibaba/mtl/log/c/c;

    invoke-virtual {v0}, Lcom/alibaba/mtl/log/c/c;->G()V

    return-void
.end method
