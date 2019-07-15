.class Lcom/alibaba/sdk/android/feedback/xblink/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/feedback/xblink/f/f;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/sdk/android/feedback/xblink/f/d;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/feedback/xblink/f/d;Lcom/alibaba/sdk/android/feedback/xblink/f/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/e;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/d;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/e;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/f;

    iput-object p3, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/e;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/e;->c:Lcom/alibaba/sdk/android/feedback/xblink/f/d;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/e;->a:Lcom/alibaba/sdk/android/feedback/xblink/f/f;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/d;Lcom/alibaba/sdk/android/feedback/xblink/f/f;Ljava/lang/String;)V

    return-void
.end method
