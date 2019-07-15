.class Lcom/phicomm/speaker/net/a/a$2;
.super Ljava/lang/Object;
.source "BaseCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lokhttp3/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/phicomm/speaker/net/a/a;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/net/a/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/phicomm/speaker/net/a/a$2;->c:Lcom/phicomm/speaker/net/a/a;

    iput-object p2, p0, Lcom/phicomm/speaker/net/a/a$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/net/a/a$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$2;->c:Lcom/phicomm/speaker/net/a/a;

    invoke-static {v0}, Lcom/phicomm/speaker/net/a/a;->a(Lcom/phicomm/speaker/net/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$2;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/phicomm/speaker/net/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$2;->a:Ljava/lang/String;

    .line 306
    :goto_0
    iget-object v1, p0, Lcom/phicomm/speaker/net/a/a$2;->c:Lcom/phicomm/speaker/net/a/a;

    iget-object v2, p0, Lcom/phicomm/speaker/net/a/a$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/phicomm/speaker/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/phicomm/speaker/net/a/a$2;->c:Lcom/phicomm/speaker/net/a/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/net/a/a;->a(Lcom/phicomm/speaker/net/a/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 309
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
