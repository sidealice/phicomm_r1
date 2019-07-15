.class public Lcom/phicomm/speaker/model/i;
.super Ljava/lang/Object;
.source "PhiLinkModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/net/a/a;)V
    .locals 4

    const-string v0, "%s%s%s"

    const/4 v1, 0x3

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "http://"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/phicomm/speaker/f/u;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "/LocalPhilinkIotList.asp?action=get"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v0, p1}, Lcom/phicomm/speaker/net/c/c;->b(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "%s%s%s%s%s%s%s"

    const/4 v1, 0x7

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "http://"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/phicomm/speaker/f/u;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "/LocalPhilinkIotList.asp?action=set_iot_in"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "&mac="

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object p1, v1, v2

    const-string p1, "&extra_data="

    const/4 v2, 0x5

    aput-object p1, v1, v2

    const-string p1, "utf-8"

    .line 27
    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v1, p2

    .line 26
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object p2

    .line 29
    invoke-virtual {p2, p1, p3}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
