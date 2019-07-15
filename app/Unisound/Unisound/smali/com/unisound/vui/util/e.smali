.class public Lcom/unisound/vui/util/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
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

    sput-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    const-string v1, "-90002"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    const-string v1, "-91002"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    const-string v1, "-91007"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    const-string v1, "-91008"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    const-string v1, "-91009"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    const-string v1, "-91003"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    const-string v1, "-91004"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    const-string v1, "-90005"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    const-string v1, "-91742"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
