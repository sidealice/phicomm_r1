.class Lcom/phicomm/speaker/net/a/a$3;
.super Ljava/lang/Object;
.source "BaseCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/net/a/a;->b(Ljava/lang/String;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lokhttp3/Request;

.field final synthetic c:Lcom/phicomm/speaker/net/a/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/net/a/a;Ljava/lang/String;Lokhttp3/Request;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/phicomm/speaker/net/a/a$3;->c:Lcom/phicomm/speaker/net/a/a;

    iput-object p2, p0, Lcom/phicomm/speaker/net/a/a$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/net/a/a$3;->b:Lokhttp3/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "BaseCallback"

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toUiSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/a/a$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$3;->c:Lcom/phicomm/speaker/net/a/a;

    iget-object v1, p0, Lcom/phicomm/speaker/net/a/a$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/net/a/a$3;->b:Lokhttp3/Request;

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Lokhttp3/Request;)V

    return-void
.end method
