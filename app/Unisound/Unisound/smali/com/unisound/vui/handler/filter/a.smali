.class public Lcom/unisound/vui/handler/filter/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unisound/vui/handler/filter/a;->a:Ljava/util/List;

    sget-object v0, Lcom/unisound/vui/handler/filter/a;->a:Ljava/util/List;

    const-string v1, "cn.yunzhisheng.setting.mp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/handler/filter/a;->a:Ljava/util/List;

    const-string v1, "cn.yunzhisheng.chat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/handler/filter/a;->a:Ljava/util/List;

    const-string v1, "cn.yunzhisheng.error"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/unisound/vui/handler/filter/a;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
