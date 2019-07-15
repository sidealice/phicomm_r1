.class public final enum Lcom/xiaomi/push/thrift/a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/thrift/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/xiaomi/push/thrift/a;

.field public static final enum B:Lcom/xiaomi/push/thrift/a;

.field public static final enum C:Lcom/xiaomi/push/thrift/a;

.field public static final enum D:Lcom/xiaomi/push/thrift/a;

.field public static final enum E:Lcom/xiaomi/push/thrift/a;

.field public static final enum F:Lcom/xiaomi/push/thrift/a;

.field public static final enum G:Lcom/xiaomi/push/thrift/a;

.field public static final enum H:Lcom/xiaomi/push/thrift/a;

.field public static final enum I:Lcom/xiaomi/push/thrift/a;

.field public static final enum J:Lcom/xiaomi/push/thrift/a;

.field public static final enum K:Lcom/xiaomi/push/thrift/a;

.field public static final enum L:Lcom/xiaomi/push/thrift/a;

.field public static final enum M:Lcom/xiaomi/push/thrift/a;

.field public static final enum N:Lcom/xiaomi/push/thrift/a;

.field public static final enum O:Lcom/xiaomi/push/thrift/a;

.field public static final enum P:Lcom/xiaomi/push/thrift/a;

.field public static final enum Q:Lcom/xiaomi/push/thrift/a;

.field public static final enum R:Lcom/xiaomi/push/thrift/a;

.field public static final enum S:Lcom/xiaomi/push/thrift/a;

.field public static final enum T:Lcom/xiaomi/push/thrift/a;

.field public static final enum U:Lcom/xiaomi/push/thrift/a;

.field public static final enum V:Lcom/xiaomi/push/thrift/a;

.field public static final enum W:Lcom/xiaomi/push/thrift/a;

.field public static final enum X:Lcom/xiaomi/push/thrift/a;

.field public static final enum Y:Lcom/xiaomi/push/thrift/a;

.field public static final enum Z:Lcom/xiaomi/push/thrift/a;

.field public static final enum a:Lcom/xiaomi/push/thrift/a;

.field public static final enum aa:Lcom/xiaomi/push/thrift/a;

.field public static final enum ab:Lcom/xiaomi/push/thrift/a;

.field public static final enum ac:Lcom/xiaomi/push/thrift/a;

.field private static final synthetic ae:[Lcom/xiaomi/push/thrift/a;

.field public static final enum b:Lcom/xiaomi/push/thrift/a;

.field public static final enum c:Lcom/xiaomi/push/thrift/a;

.field public static final enum d:Lcom/xiaomi/push/thrift/a;

.field public static final enum e:Lcom/xiaomi/push/thrift/a;

.field public static final enum f:Lcom/xiaomi/push/thrift/a;

.field public static final enum g:Lcom/xiaomi/push/thrift/a;

.field public static final enum h:Lcom/xiaomi/push/thrift/a;

.field public static final enum i:Lcom/xiaomi/push/thrift/a;

.field public static final enum j:Lcom/xiaomi/push/thrift/a;

.field public static final enum k:Lcom/xiaomi/push/thrift/a;

.field public static final enum l:Lcom/xiaomi/push/thrift/a;

.field public static final enum m:Lcom/xiaomi/push/thrift/a;

.field public static final enum n:Lcom/xiaomi/push/thrift/a;

.field public static final enum o:Lcom/xiaomi/push/thrift/a;

.field public static final enum p:Lcom/xiaomi/push/thrift/a;

.field public static final enum q:Lcom/xiaomi/push/thrift/a;

.field public static final enum r:Lcom/xiaomi/push/thrift/a;

.field public static final enum s:Lcom/xiaomi/push/thrift/a;

.field public static final enum t:Lcom/xiaomi/push/thrift/a;

.field public static final enum u:Lcom/xiaomi/push/thrift/a;

.field public static final enum v:Lcom/xiaomi/push/thrift/a;

.field public static final enum w:Lcom/xiaomi/push/thrift/a;

.field public static final enum x:Lcom/xiaomi/push/thrift/a;

.field public static final enum y:Lcom/xiaomi/push/thrift/a;

.field public static final enum z:Lcom/xiaomi/push/thrift/a;


# instance fields
.field private final ad:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "TCP_CONN_FAIL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->a:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "TCP_CONN_TIME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->b:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "PING_RTT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->c:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_CON_FAIL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->d:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_CON_OK"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->e:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "ICMP_PING_FAIL"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->f:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "ICMP_PING_OK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->g:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_ONLINE_RATE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->h:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_REQUEST_SUCCESS"

    const/16 v11, 0x2710

    invoke-direct {v0, v1, v10, v11}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->i:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_TCP_NOACCESS"

    const/16 v11, 0x9

    const/16 v12, 0x2775

    invoke-direct {v0, v1, v11, v12}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->j:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_TCP_NETUNREACH"

    const/16 v12, 0xa

    const/16 v13, 0x2776

    invoke-direct {v0, v1, v12, v13}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->k:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_TCP_CONNREFUSED"

    const/16 v13, 0xb

    const/16 v14, 0x2777

    invoke-direct {v0, v1, v13, v14}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->l:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_TCP_NOROUTETOHOST"

    const/16 v14, 0xc

    const/16 v15, 0x2778

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->m:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_TCP_TIMEOUT"

    const/16 v15, 0xd

    const/16 v14, 0x2779

    invoke-direct {v0, v1, v15, v14}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->n:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_TCP_INVALARG"

    const/16 v14, 0xe

    const/16 v15, 0x277a

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->o:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_TCP_UKNOWNHOST"

    const/16 v15, 0xf

    const/16 v14, 0x277b

    invoke-direct {v0, v1, v15, v14}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->p:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_TCP_ERR_OTHER"

    const/16 v14, 0x10

    const/16 v15, 0x27d7

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->q:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "GSLB_ERR"

    const/16 v14, 0x11

    const/16 v15, 0x2af7

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->r:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_SUCCESS"

    const/16 v14, 0x12

    const/16 v15, 0x4e20

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->s:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_TCP_NOACCESS"

    const/16 v14, 0x13

    const/16 v15, 0x4e85

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->t:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_TCP_NETUNREACH"

    const/16 v14, 0x14

    const/16 v15, 0x4e86

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->u:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_TCP_CONNREFUSED"

    const/16 v14, 0x15

    const/16 v15, 0x4e87

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->v:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_TCP_NOROUTETOHOST"

    const/16 v14, 0x16

    const/16 v15, 0x4e88

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->w:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_TCP_TIMEOUT"

    const/16 v14, 0x17

    const/16 v15, 0x4e89

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->x:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_TCP_INVALARG"

    const/16 v14, 0x18

    const/16 v15, 0x4e8a

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->y:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_TCP_UKNOWNHOST"

    const/16 v14, 0x19

    const/16 v15, 0x4e8b

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->z:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_TCP_ERR_OTHER"

    const/16 v14, 0x1a

    const/16 v15, 0x4ee7

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->A:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_XMPP_ERR"

    const/16 v14, 0x1b

    const/16 v15, 0x4faf

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->B:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_BOSH_UNKNOWNHOST"

    const/16 v14, 0x1c

    const/16 v15, 0x4fb7

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->C:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CONN_BOSH_ERR"

    const/16 v14, 0x1d

    const/16 v15, 0x5013

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->D:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_SUCCESS"

    const/16 v14, 0x1e

    const/16 v15, 0x7530

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->E:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_TCP_READ_TIMEOUT_DEPRECTED"

    const/16 v14, 0x1f

    const/16 v15, 0x7595

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->F:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_TCP_CONNRESET_DEPRECTED"

    const/16 v14, 0x20

    const/16 v15, 0x7596

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->G:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_TCP_BROKEN_PIPE_DEPRECTED"

    const/16 v14, 0x21

    const/16 v15, 0x7597

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->H:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_TCP_READ_TIMEOUT"

    const/16 v14, 0x22

    const/16 v15, 0x759c

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->I:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_TCP_CONNRESET"

    const/16 v14, 0x23

    const/16 v15, 0x759d

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->J:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_TCP_BROKEN_PIPE"

    const/16 v14, 0x24

    const/16 v15, 0x759e

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->K:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_TCP_ERR"

    const/16 v14, 0x25

    const/16 v15, 0x75f7

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->L:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_XMPP_ERR"

    const/16 v14, 0x26

    const/16 v15, 0x76bf

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->M:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_BOSH_ITEM_NOT_FOUND"

    const/16 v14, 0x27

    const/16 v15, 0x76c1

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->N:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_BOSH_ERR"

    const/16 v14, 0x28

    const/16 v15, 0x7723

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->O:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_TIMEOUT"

    const/16 v14, 0x29

    const/16 v15, 0x7725

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->P:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "BIND_INVALID_SIG"

    const/16 v14, 0x2a

    const/16 v15, 0x7726

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->Q:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_TCP_READTIMEOUT_DEPRECTED"

    const/16 v14, 0x2b

    const v15, 0x9ca5

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->R:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_TCP_CONNRESET_DEPRECTED"

    const/16 v14, 0x2c

    const v15, 0x9ca6

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->S:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_TCP_BROKEN_PIPE_DEPRECTED"

    const/16 v14, 0x2d

    const v15, 0x9ca7

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->T:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_TCP_READTIMEOUT"

    const/16 v14, 0x2e

    const v15, 0x9cac

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->U:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_TCP_CONNRESET"

    const/16 v14, 0x2f

    const v15, 0x9cad

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->V:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_TCP_BROKEN_PIPE"

    const/16 v14, 0x30

    const v15, 0x9cae

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->W:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_TCP_ERR"

    const/16 v14, 0x31

    const v15, 0x9d07

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->X:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_XMPPEXCEPTION"

    const/16 v14, 0x32

    const v15, 0x9dcf

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->Y:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_BOSH_ITEMNOTFIND"

    const/16 v14, 0x33

    const v15, 0x9dd1

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->Z:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_BOSH_EXCEPTION"

    const/16 v14, 0x34

    const v15, 0x9e33

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->aa:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_TIMER_DELAYED"

    const/16 v14, 0x35

    const v15, 0xc351

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->ab:Lcom/xiaomi/push/thrift/a;

    new-instance v0, Lcom/xiaomi/push/thrift/a;

    const-string v1, "CHANNEL_STATS_COUNTER"

    const/16 v14, 0x36

    const/16 v15, 0x1f40

    invoke-direct {v0, v1, v14, v15}, Lcom/xiaomi/push/thrift/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/push/thrift/a;->ac:Lcom/xiaomi/push/thrift/a;

    const/16 v0, 0x37

    new-array v0, v0, [Lcom/xiaomi/push/thrift/a;

    sget-object v1, Lcom/xiaomi/push/thrift/a;->a:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->b:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/push/thrift/a;->c:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/push/thrift/a;->d:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/push/thrift/a;->e:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/push/thrift/a;->f:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/push/thrift/a;->g:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/push/thrift/a;->h:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaomi/push/thrift/a;->i:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaomi/push/thrift/a;->j:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/xiaomi/push/thrift/a;->k:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v12

    sget-object v1, Lcom/xiaomi/push/thrift/a;->l:Lcom/xiaomi/push/thrift/a;

    aput-object v1, v0, v13

    sget-object v1, Lcom/xiaomi/push/thrift/a;->m:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->n:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->o:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->p:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->q:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->r:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->s:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->t:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->u:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->v:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->w:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->x:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->y:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->z:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->A:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->B:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->C:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->D:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->E:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->F:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->G:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->H:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->I:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->J:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->K:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->L:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->M:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->N:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->O:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->P:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->Q:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->R:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->S:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->T:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->U:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->V:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->W:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->X:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->Y:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->Z:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->aa:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->ab:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/push/thrift/a;->ac:Lcom/xiaomi/push/thrift/a;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaomi/push/thrift/a;->ae:[Lcom/xiaomi/push/thrift/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/push/thrift/a;->ad:I

    return-void
.end method

.method public static a(I)Lcom/xiaomi/push/thrift/a;
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    packed-switch p0, :pswitch_data_6

    packed-switch p0, :pswitch_data_7

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    sget-object p0, Lcom/xiaomi/push/thrift/a;->ab:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_1
    sget-object p0, Lcom/xiaomi/push/thrift/a;->aa:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_2
    sget-object p0, Lcom/xiaomi/push/thrift/a;->Z:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_3
    sget-object p0, Lcom/xiaomi/push/thrift/a;->Y:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_4
    sget-object p0, Lcom/xiaomi/push/thrift/a;->X:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_5
    sget-object p0, Lcom/xiaomi/push/thrift/a;->O:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_6
    sget-object p0, Lcom/xiaomi/push/thrift/a;->N:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_7
    sget-object p0, Lcom/xiaomi/push/thrift/a;->M:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_8
    sget-object p0, Lcom/xiaomi/push/thrift/a;->L:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_9
    sget-object p0, Lcom/xiaomi/push/thrift/a;->E:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_a
    sget-object p0, Lcom/xiaomi/push/thrift/a;->D:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_b
    sget-object p0, Lcom/xiaomi/push/thrift/a;->C:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_c
    sget-object p0, Lcom/xiaomi/push/thrift/a;->B:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_d
    sget-object p0, Lcom/xiaomi/push/thrift/a;->A:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_e
    sget-object p0, Lcom/xiaomi/push/thrift/a;->s:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_f
    sget-object p0, Lcom/xiaomi/push/thrift/a;->r:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_10
    sget-object p0, Lcom/xiaomi/push/thrift/a;->q:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_11
    sget-object p0, Lcom/xiaomi/push/thrift/a;->i:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :sswitch_12
    sget-object p0, Lcom/xiaomi/push/thrift/a;->ac:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/xiaomi/push/thrift/a;->W:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/xiaomi/push/thrift/a;->V:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/xiaomi/push/thrift/a;->U:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/xiaomi/push/thrift/a;->T:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/xiaomi/push/thrift/a;->S:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/xiaomi/push/thrift/a;->R:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/xiaomi/push/thrift/a;->Q:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/xiaomi/push/thrift/a;->P:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/xiaomi/push/thrift/a;->K:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/xiaomi/push/thrift/a;->J:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/xiaomi/push/thrift/a;->I:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/xiaomi/push/thrift/a;->H:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/xiaomi/push/thrift/a;->G:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/xiaomi/push/thrift/a;->F:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/xiaomi/push/thrift/a;->z:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/xiaomi/push/thrift/a;->y:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/xiaomi/push/thrift/a;->x:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/xiaomi/push/thrift/a;->w:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/xiaomi/push/thrift/a;->v:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/xiaomi/push/thrift/a;->u:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/xiaomi/push/thrift/a;->t:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/xiaomi/push/thrift/a;->p:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/xiaomi/push/thrift/a;->o:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/xiaomi/push/thrift/a;->n:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/xiaomi/push/thrift/a;->m:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/xiaomi/push/thrift/a;->l:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/xiaomi/push/thrift/a;->k:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/xiaomi/push/thrift/a;->j:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/xiaomi/push/thrift/a;->h:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_1d
    sget-object p0, Lcom/xiaomi/push/thrift/a;->g:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_1e
    sget-object p0, Lcom/xiaomi/push/thrift/a;->f:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_1f
    sget-object p0, Lcom/xiaomi/push/thrift/a;->e:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_20
    sget-object p0, Lcom/xiaomi/push/thrift/a;->d:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_21
    sget-object p0, Lcom/xiaomi/push/thrift/a;->c:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_22
    sget-object p0, Lcom/xiaomi/push/thrift/a;->b:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_23
    sget-object p0, Lcom/xiaomi/push/thrift/a;->a:Lcom/xiaomi/push/thrift/a;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2775
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4e85
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7595
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x759c
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7725
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x9ca5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x9cac
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_12
        0x2710 -> :sswitch_11
        0x27d7 -> :sswitch_10
        0x2af7 -> :sswitch_f
        0x4e20 -> :sswitch_e
        0x4ee7 -> :sswitch_d
        0x4faf -> :sswitch_c
        0x4fb7 -> :sswitch_b
        0x5013 -> :sswitch_a
        0x7530 -> :sswitch_9
        0x75f7 -> :sswitch_8
        0x76bf -> :sswitch_7
        0x76c1 -> :sswitch_6
        0x7723 -> :sswitch_5
        0x9d07 -> :sswitch_4
        0x9dcf -> :sswitch_3
        0x9dd1 -> :sswitch_2
        0x9e33 -> :sswitch_1
        0xc351 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/thrift/a;
    .locals 1

    const-class v0, Lcom/xiaomi/push/thrift/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/thrift/a;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/thrift/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/thrift/a;->ae:[Lcom/xiaomi/push/thrift/a;

    invoke-virtual {v0}, [Lcom/xiaomi/push/thrift/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/thrift/a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/thrift/a;->ad:I

    return v0
.end method
