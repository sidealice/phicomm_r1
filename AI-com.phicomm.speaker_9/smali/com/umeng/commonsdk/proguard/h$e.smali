.class public final enum Lcom/umeng/commonsdk/proguard/h$e;
.super Ljava/lang/Enum;
.source "UMEnvelope.java"

# interfaces
.implements Lcom/umeng/commonsdk/proguard/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/umeng/commonsdk/proguard/h$e;",
        ">;",
        "Lcom/umeng/commonsdk/proguard/s;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum b:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum c:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum d:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum e:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum f:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum g:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum h:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum i:Lcom/umeng/commonsdk/proguard/h$e;

.field public static final enum j:Lcom/umeng/commonsdk/proguard/h$e;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/proguard/h$e;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic n:[Lcom/umeng/commonsdk/proguard/h$e;


# instance fields
.field private final l:S

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 91
    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "VERSION"

    const-string v2, "version"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->a:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "ADDRESS"

    const-string v2, "address"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->b:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "SIGNATURE"

    const-string v2, "signature"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->c:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "SERIAL_NUM"

    const-string v2, "serial_num"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->d:Lcom/umeng/commonsdk/proguard/h$e;

    .line 92
    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "TS_SECS"

    const-string v2, "ts_secs"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->e:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "LENGTH"

    const-string v2, "length"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->f:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "ENTITY"

    const-string v2, "entity"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->g:Lcom/umeng/commonsdk/proguard/h$e;

    .line 93
    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "GUID"

    const-string v2, "guid"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v10, v11, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->h:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "CHECKSUM"

    const-string v2, "checksum"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v11, v12, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->i:Lcom/umeng/commonsdk/proguard/h$e;

    new-instance v0, Lcom/umeng/commonsdk/proguard/h$e;

    const-string v1, "CODEX"

    const-string v2, "codex"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v12, v13, v2}, Lcom/umeng/commonsdk/proguard/h$e;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->j:Lcom/umeng/commonsdk/proguard/h$e;

    .line 90
    new-array v0, v13, [Lcom/umeng/commonsdk/proguard/h$e;

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->a:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->b:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->c:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->d:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->e:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->f:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v8

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->g:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v9

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->h:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v10

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->i:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v11

    sget-object v1, Lcom/umeng/commonsdk/proguard/h$e;->j:Lcom/umeng/commonsdk/proguard/h$e;

    aput-object v1, v0, v12

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->n:[Lcom/umeng/commonsdk/proguard/h$e;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/h$e;->k:Ljava/util/Map;

    .line 98
    const-class v0, Lcom/umeng/commonsdk/proguard/h$e;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/proguard/h$e;

    .line 99
    sget-object v2, Lcom/umeng/commonsdk/proguard/h$e;->k:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/h$e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput-short p3, p0, Lcom/umeng/commonsdk/proguard/h$e;->l:S

    .line 158
    iput-object p4, p0, Lcom/umeng/commonsdk/proguard/h$e;->m:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/umeng/commonsdk/proguard/h$e;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :pswitch_0
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->j:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    .line 126
    :pswitch_1
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->i:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    .line 124
    :pswitch_2
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->h:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    .line 122
    :pswitch_3
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->g:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    .line 120
    :pswitch_4
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->f:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    .line 118
    :pswitch_5
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->e:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    .line 116
    :pswitch_6
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->d:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    .line 114
    :pswitch_7
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->c:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    .line 112
    :pswitch_8
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->b:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    .line 110
    :pswitch_9
    sget-object p0, Lcom/umeng/commonsdk/proguard/h$e;->a:Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h$e;
    .locals 1

    .line 150
    sget-object v0, Lcom/umeng/commonsdk/proguard/h$e;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0
.end method

.method public static b(I)Lcom/umeng/commonsdk/proguard/h$e;
    .locals 3

    .line 139
    invoke-static {p0}, Lcom/umeng/commonsdk/proguard/h$e;->a(I)Lcom/umeng/commonsdk/proguard/h$e;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/commonsdk/proguard/h$e;
    .locals 1

    .line 90
    const-class v0, Lcom/umeng/commonsdk/proguard/h$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/umeng/commonsdk/proguard/h$e;

    return-object p0
.end method

.method public static values()[Lcom/umeng/commonsdk/proguard/h$e;
    .locals 1

    .line 90
    sget-object v0, Lcom/umeng/commonsdk/proguard/h$e;->n:[Lcom/umeng/commonsdk/proguard/h$e;

    invoke-virtual {v0}, [Lcom/umeng/commonsdk/proguard/h$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/commonsdk/proguard/h$e;

    return-object v0
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 162
    iget-short v0, p0, Lcom/umeng/commonsdk/proguard/h$e;->l:S

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/h$e;->m:Ljava/lang/String;

    return-object v0
.end method
