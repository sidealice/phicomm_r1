.class public abstract Lcom/alibaba/sdk/android/feedback/util/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

.field protected b:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/alibaba/sdk/android/feedback/util/IWxCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/util/a/a;->a:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/util/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract a()[B
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a/a;->a:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/util/a/a;->a:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/sdk/android/feedback/util/IWxCallback;->onProgress(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/util/a/a;->a()[B

    return-void
.end method
