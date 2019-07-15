.class public final Lcom/huawei/hms/support/log/b;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/huawei/hms/support/log/a/a;->a()Lcom/huawei/hms/support/log/a/a;

    move-result-object v0

    const-string v1, "============================================================================\n"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    const-string v1, "====                 Log version "

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    const-string v2, "3.5.00-00[20160701]"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    const-string v2, "                    ====\n"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    const-string v1, "====            Service version "

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    const-string v2, "product"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    const-string v3, "release"

    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    const-string v2, "2.4.0.300"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    move-result-object v1

    const-string v2, "               ====\n"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    const-string v1, "====       MIP(Mobile Interface Protocol) with MTK(Mini Tool Kit)       ====\n"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    const-string v1, "====        Copyright (c) 2011-2016 Huawei Technologies Co., Ltd.       ====\n"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    const-string v1, "============================================================================"

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/log/a/a;->a(Ljava/lang/Object;)Lcom/huawei/hms/support/log/a/a;

    invoke-virtual {v0}, Lcom/huawei/hms/support/log/a/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
