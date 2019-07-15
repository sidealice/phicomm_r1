.class public final Ljavax/jmdns/impl/constants/DNSConstants;
.super Ljava/lang/Object;
.source "DNSConstants.java"


# static fields
.field public static final ANNOUNCED_RENEWAL_TTL_INTERVAL:I = 0x30d4

.field public static final ANNOUNCE_WAIT_INTERVAL:I = 0x3e8

.field public static final CLOSE_TIMEOUT:J = 0x1388L

.field public static final DNS_PORT:I = 0x35

.field public static final DNS_TTL:I = 0x19

.field public static final FLAGS_AA:I = 0x400

.field public static final FLAGS_AD:I = 0x20

.field public static final FLAGS_CD:I = 0x10

.field public static final FLAGS_QR_MASK:I = 0x8000

.field public static final FLAGS_QR_QUERY:I = 0x0

.field public static final FLAGS_QR_RESPONSE:I = 0x8000

.field public static final FLAGS_RA:I = 0x8000

.field public static final FLAGS_RD:I = 0x100

.field public static final FLAGS_TC:I = 0x200

.field public static final FLAGS_Z:I = 0x40

.field public static final KNOWN_ANSWER_TTL:I = 0x78

.field public static final MAX_MSG_ABSOLUTE:I = 0x230c

.field public static final MAX_MSG_TYPICAL:I = 0x5b4

.field public static final MDNS_GROUP:Ljava/lang/String; = "224.0.0.251"

.field public static final MDNS_GROUP_IPV6:Ljava/lang/String; = "FF02::FB"

.field public static final MDNS_PORT:I

.field public static final NETWORK_CHECK_INTERVAL:I = 0x2710

.field public static final PROBE_CONFLICT_INTERVAL:I = 0x3e8

.field public static final PROBE_THROTTLE_COUNT:I = 0xa

.field public static final PROBE_THROTTLE_COUNT_INTERVAL:I = 0x1388

.field public static final PROBE_WAIT_INTERVAL:I = 0xfa

.field public static final QUERY_WAIT_INTERVAL:I = 0xe1

.field public static final RECORD_EXPIRY_DELAY:I = 0x1

.field public static final RECORD_REAPER_INTERVAL:I = 0x2710

.field public static final RESPONSE_MAX_WAIT_INTERVAL:I = 0x73

.field public static final RESPONSE_MIN_WAIT_INTERVAL:I = 0x14

.field public static final SERVICE_INFO_TIMEOUT:J = 0x1770L

.field public static final SHARED_QUERY_TIME:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "net.mdns.port"

    const-string v1, "5353"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Ljavax/jmdns/impl/constants/DNSConstants;->MDNS_PORT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
