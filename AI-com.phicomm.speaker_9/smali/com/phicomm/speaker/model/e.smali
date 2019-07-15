.class public Lcom/phicomm/speaker/model/e;
.super Ljava/lang/Object;
.source "FeedBackModel.java"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/phicomm/speaker/net/a/b<",
            "Lcom/phicomm/speaker/bean/FeedBackQuestion;",
            ">;)V"
        }
    .end annotation

    const-string v0, "https://home.phicomm.com/v1/soundbox/feeback/query_question"

    .line 16
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object v0

    const-string v1, "content_id"

    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p0

    const-string v0, "type_id"

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p0

    const-string p1, "phone"

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/a;

    move-result-object p0

    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, p1, p3}, Lcom/phicomm/speaker/net/c/a;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://home.phicomm.com/v1/soundbox/feeback/collect_answer"

    .line 24
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "content_id"

    .line 25
    invoke-virtual {v0, v1, p0}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p0

    const-string v0, "type_id"

    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p0

    const-string p1, "seq"

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p0

    const-string p1, "content"

    .line 28
    invoke-virtual {p0, p1, p3}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p0

    const-string p1, "phone"

    .line 29
    invoke-virtual {p0, p1, p4}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p0

    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, p1, p5}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
