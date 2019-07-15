.class public Lcom/phicomm/speaker/model/g;
.super Ljava/lang/Object;
.source "LogModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 1

    const-string v0, "https://home.phicomm.com/v1/common/file/upload_file_app"

    .line 23
    invoke-static {v0, p1}, Lcom/phicomm/speaker/net/b/b;->a(Ljava/lang/String;Ljava/io/File;)Lcom/phicomm/speaker/net/c/f;

    move-result-object p1

    const-string v0, "phone_number"

    .line 24
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/f;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/f;

    move-result-object p1

    const/4 p2, 0x0

    .line 25
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/f;->b(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
