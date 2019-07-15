.class Lcom/alibaba/sdk/android/feedback/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

.field final synthetic c:Lcom/alibaba/sdk/android/feedback/a/c;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/a/c;Ljava/util/Map;Lcom/alibaba/sdk/android/feedback/util/IWxCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/a/g;->c:Lcom/alibaba/sdk/android/feedback/a/c;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/a/g;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/alibaba/sdk/android/feedback/a/g;->b:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/alibaba/sdk/android/feedback/util/a/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/a/g;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/a/g;->b:Lcom/alibaba/sdk/android/feedback/util/IWxCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/a/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/getUnreadCount.do"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/feedback/util/a/b;-><init>(Ljava/util/Map;Lcom/alibaba/sdk/android/feedback/util/IWxCallback;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/util/a/b;->a()[B

    return-void
.end method
