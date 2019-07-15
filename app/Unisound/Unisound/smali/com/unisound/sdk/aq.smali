.class public Lcom/unisound/sdk/aq;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/unisound/common/a;

.field public static b:Lcom/unisound/common/a;

.field public static c:Lcom/unisound/common/a;

.field public static d:Lcom/unisound/common/a;

.field public static e:Lcom/unisound/common/a;

.field public static f:Lcom/unisound/common/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x232c

    const/16 v4, 0x2329

    const/16 v3, 0x50

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "asrv3.hivoice.cn"

    const-string v2, "117.121.49.41"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/aq;->a:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "v_eng.hivoice.cn"

    const-string v2, "117.121.55.43"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/aq;->b:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "v_cnt.hivoice.cn"

    const-string v2, "117.121.55.41"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/aq;->c:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "eval.hivoice.cn"

    const-string v2, "140.207.193.59"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/aq;->d:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "117.121.55.39"

    const-string v2, "117.121.55.39"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/aq;->e:Lcom/unisound/common/a;

    new-instance v0, Lcom/unisound/common/a;

    const-string v1, "v_zhen.hivoice.cn"

    const-string v2, "v_zhen.hivoice.cn"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/unisound/common/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/aq;->f:Lcom/unisound/common/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/unisound/common/a;
    .locals 1

    const-string v0, "en"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unisound/sdk/aq;->b:Lcom/unisound/common/a;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "co"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unisound/sdk/aq;->c:Lcom/unisound/common/a;

    goto :goto_0

    :cond_1
    const-string v0, "oral"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unisound/sdk/aq;->d:Lcom/unisound/common/a;

    goto :goto_0

    :cond_2
    const-string v0, "cn_en_mix"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unisound/sdk/aq;->f:Lcom/unisound/common/a;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/unisound/sdk/aq;->a:Lcom/unisound/common/a;

    goto :goto_0
.end method
