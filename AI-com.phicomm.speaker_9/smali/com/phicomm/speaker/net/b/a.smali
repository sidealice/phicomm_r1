.class public Lcom/phicomm/speaker/net/b/a;
.super Ljava/lang/Object;
.source "Err2MsgUtils.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    .line 26
    invoke-static {}, Lcom/phicomm/speaker/net/b/a;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "11"

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AUTHORIZATION_CODE"

    const-string v1, ""

    .line 82
    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/y;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, ""

    .line 85
    sget-object v1, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 86
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672a\u77e5\u9519\u8bef\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static a()V
    .locals 3

    .line 31
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "301"

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "302"

    const-string v2, "\u624b\u673a\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "303"

    const-string v2, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "304"

    const-string v2, "\u670d\u52a1\u5668\u65e0\u54cd\u5e94"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "305"

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5(305)"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "306"

    const-string v2, "\u767b\u5f55\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "1"

    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "2"

    const-string v2, "\u9a8c\u8bc1\u7801\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "3"

    const-string v2, "\u5c1a\u672a\u7ecf\u8fc7\u624b\u673a\u53f7\u9a8c\u8bc1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "4"

    const-string v2, "\u65e7\u5bc6\u7801\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "5"

    const-string v2, "token\u5931\u6548"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "7"

    const-string v2, "\u5e10\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "8"

    const-string v2, "\u5e10\u53f7\u6216\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "11"

    const-string v2, "\u6388\u6743\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "12"

    const-string v2, "\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "13"

    const-string v2, "\u83b7\u53d6\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "14"

    const-string v2, "\u8be5\u8d26\u6237\u5df2\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "18"

    const-string v2, "\u56fe\u7247\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "19"

    const-string v2, "\u56fe\u7247\u4e3a\u7a7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "20"

    const-string v2, "\u7528\u6237\u672a\u8bbe\u7f6e\u5934\u50cf"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "23"

    const-string v2, "\u9a8c\u8bc1\u7801\u5df2\u4f7f\u7528\uff0c\u8bf7\u91cd\u65b0\u83b7\u53d6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "25"

    const-string v2, "\u90ae\u7bb1\u5df2\u7ecf\u6ce8\u518c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "26"

    const-string v2, "\u8d26\u53f7\u88ab\u8e22\u51fa\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "30"

    const-string v2, "\u591a\u7aef\u767b\u5f55\u8d26\u6237\u88ab\u8e22\u51fa"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "32"

    const-string v2, "\u5bc6\u7801\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "34"

    const-string v2, "\u624b\u673a\u53f7\u683c\u5f0f\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "36"

    const-string v2, "\u56fe\u7247\u9a8c\u8bc1\u7801\u8fc7\u671f\uff0c\u8bf7\u5237\u65b0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "37"

    const-string v2, "\u56fe\u7247\u9a8c\u8bc1\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "38"

    const-string v2, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8bf7\u6c42\u8fc7\u5feb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "39"

    const-string v2, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8bf7\u6c42\u8d85\u51fa\u9650\u5236"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "50"

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "400"

    const-string v2, "JSON \u65e0\u6548"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "401"

    const-string v2, "\u672a\u6388\u6743"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "403"

    const-string v2, "\u7981\u6b62"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "404"

    const-string v2, "\u4e8b\u7269\u672a\u627e\u5230"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "409"

    const-string v2, "\u7248\u672c\u51b2\u7a81"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "413"

    const-string v2, "\u6709\u6548\u8d1f\u8f7d\u8d85\u51fa\u5141\u8bb8\u7684\u6700\u5927\u503c"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "415"

    const-string v2, "\u6587\u6863\u7f16\u7801\u4e0d\u53d7\u652f\u6301"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "429"

    const-string v2, "\u8bf7\u6c42\u8fc7\u591a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "500"

    const-string v2, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/phicomm/speaker/net/b/a;->a:Ljava/util/HashMap;

    const-string v1, "10008"

    const-string v2, "\u64cd\u4f5c\u6570\u636e\u5e93\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
