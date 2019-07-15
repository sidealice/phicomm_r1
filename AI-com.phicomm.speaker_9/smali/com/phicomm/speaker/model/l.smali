.class public Lcom/phicomm/speaker/model/l;
.super Ljava/lang/Object;
.source "UserDefinedQuesAnsModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLcom/phicomm/speaker/net/a/a;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://home.phicomm.com/v1/soundbox/custum/del/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/net/b/c;->a(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/c;

    move-result-object p1

    const/4 p2, 0x0

    .line 88
    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/c;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(JLjava/util/List;Ljava/util/List;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;",
            "Lcom/phicomm/speaker/net/a/a;",
            ")V"
        }
    .end annotation

    const-string v0, "https://home.phicomm.com/v1/soundbox/custum/edit"

    .line 74
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "cus_sel_id"

    .line 75
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "question_list"

    .line 76
    invoke-static {p3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "answer_list"

    .line 77
    invoke-static {p4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const/4 p2, 0x0

    .line 78
    invoke-virtual {p1, p2, p5}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;IIJLcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://home.phicomm.com/v1/soundbox/custums/"

    .line 29
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "type"

    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string v0, "page_no"

    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "page_size"

    .line 32
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "cus_sel_id"

    .line 33
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const/4 p2, 0x0

    .line 34
    invoke-virtual {p1, p2, p6}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method

.method public a(Ljava/lang/String;JLjava/util/List;Ljava/util/List;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/bean/CustumBean;",
            ">;",
            "Lcom/phicomm/speaker/net/a/a;",
            ")V"
        }
    .end annotation

    const-string v0, "https://home.phicomm.com/v1/soundbox/custum/add"

    .line 57
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "type"

    .line 58
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string v0, "cus_sel_id"

    .line 59
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "question_list"

    .line 60
    invoke-static {p4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const-string p2, "answer_list"

    .line 61
    invoke-static {p5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p1, p2, p6}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    .line 63
    new-instance p1, Lcom/google/gson/f;

    invoke-direct {p1}, Lcom/google/gson/f;-><init>()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V
    .locals 2

    const-string v0, "https://home.phicomm.com/v1/common/words/check_sensitive_sentence"

    .line 97
    invoke-static {v0}, Lcom/phicomm/speaker/net/b/c;->c(Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object v0

    const-string v1, "content"

    .line 98
    invoke-virtual {v0, v1, p1}, Lcom/phicomm/speaker/net/c/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/phicomm/speaker/net/c/d;

    move-result-object p1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p1, v0, p2}, Lcom/phicomm/speaker/net/c/d;->a(Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)Lokhttp3/Call;

    return-void
.end method
