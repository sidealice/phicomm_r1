.class public Lcom/alibaba/fastjson/parser/JSONToken;
.super Ljava/lang/Object;
.source "JSONToken.java"


# static fields
.field public static final COLON:I = 0x11

.field public static final COMMA:I = 0x10

.field public static final EOF:I = 0x14

.field public static final ERROR:I = 0x1

.field public static final FALSE:I = 0x7

.field public static final FIELD_NAME:I = 0x13

.field public static final IDENTIFIER:I = 0x12

.field public static final LBRACE:I = 0xc

.field public static final LBRACKET:I = 0xe

.field public static final LITERAL_FLOAT:I = 0x3

.field public static final LITERAL_INT:I = 0x2

.field public static final LITERAL_ISO8601_DATE:I = 0x5

.field public static final LITERAL_STRING:I = 0x4

.field public static final LPAREN:I = 0xa

.field public static final NEW:I = 0x9

.field public static final NULL:I = 0x8

.field public static final RBRACE:I = 0xd

.field public static final RBRACKET:I = 0xf

.field public static final RPAREN:I = 0xb

.field public static final SET:I = 0x15

.field public static final TREE_SET:I = 0x16

.field public static final TRUE:I = 0x6

.field public static final UNDEFINED:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 70
    packed-switch p0, :pswitch_data_0

    .line 118
    const-string v0, "Unkown"

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    const-string v0, "error"

    goto :goto_0

    .line 74
    :pswitch_1
    const-string v0, "int"

    goto :goto_0

    .line 76
    :pswitch_2
    const-string v0, "float"

    goto :goto_0

    .line 78
    :pswitch_3
    const-string v0, "string"

    goto :goto_0

    .line 80
    :pswitch_4
    const-string v0, "iso8601"

    goto :goto_0

    .line 82
    :pswitch_5
    const-string v0, "true"

    goto :goto_0

    .line 84
    :pswitch_6
    const-string v0, "false"

    goto :goto_0

    .line 86
    :pswitch_7
    const-string v0, "null"

    goto :goto_0

    .line 88
    :pswitch_8
    const-string v0, "new"

    goto :goto_0

    .line 90
    :pswitch_9
    const-string v0, "("

    goto :goto_0

    .line 92
    :pswitch_a
    const-string v0, ")"

    goto :goto_0

    .line 94
    :pswitch_b
    const-string v0, "{"

    goto :goto_0

    .line 96
    :pswitch_c
    const-string v0, "}"

    goto :goto_0

    .line 98
    :pswitch_d
    const-string v0, "["

    goto :goto_0

    .line 100
    :pswitch_e
    const-string v0, "]"

    goto :goto_0

    .line 102
    :pswitch_f
    const-string v0, ","

    goto :goto_0

    .line 104
    :pswitch_10
    const-string v0, ":"

    goto :goto_0

    .line 106
    :pswitch_11
    const-string v0, "ident"

    goto :goto_0

    .line 108
    :pswitch_12
    const-string v0, "fieldName"

    goto :goto_0

    .line 110
    :pswitch_13
    const-string v0, "EOF"

    goto :goto_0

    .line 112
    :pswitch_14
    const-string v0, "Set"

    goto :goto_0

    .line 114
    :pswitch_15
    const-string v0, "TreeSet"

    goto :goto_0

    .line 116
    :pswitch_16
    const-string v0, "undefined"

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
