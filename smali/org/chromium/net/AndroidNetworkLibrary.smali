.class Lorg/chromium/net/AndroidNetworkLibrary;
.super Ljava/lang/Object;
.source "AndroidNetworkLibrary.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidNetworkLibrary"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTestRootCertificate([B)V
    .locals 0
    .param p0, "rootCert"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .annotation build Lorg/chromium/base/CalledByNativeUnchecked;
    .end annotation

    .prologue
    .line 168
    invoke-static {p0}, Lorg/chromium/net/X509Util;->addTestRootCertificate([B)V

    .line 169
    return-void
.end method

.method public static clearTestRootCertificates()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .annotation build Lorg/chromium/base/CalledByNativeUnchecked;
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lorg/chromium/net/X509Util;->clearTestRootCertificates()V

    .line 179
    return-void
.end method

.method public static getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "extension"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foo."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNetworkCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 186
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 188
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 189
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getNetworkOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 198
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 200
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    const-string v1, ""

    .line 201
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static haveOnlyLoopbackAddresses()Z
    .locals 7
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 119
    const/4 v1, 0x0

    .line 121
    .local v1, "list":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    if-nez v1, :cond_0

    .line 136
    :goto_0
    return v3

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AndroidNetworkLibrary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not get network interfaces: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/Exception;
    .local v2, "netIf":Ljava/net/NetworkInterface;
    :catch_1
    move-exception v0

    .line 128
    .end local v2    # "netIf":Ljava/net/NetworkInterface;
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 131
    .restart local v2    # "netIf":Ljava/net/NetworkInterface;
    :try_start_1
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 136
    .end local v2    # "netIf":Ljava/net/NetworkInterface;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static storeCertificate(Landroid/content/Context;I[B)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "certType"    # I
    .param p2, "data"    # [B
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    packed-switch p1, :pswitch_data_0

    .line 92
    const-string v3, "AndroidNetworkLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid certificate type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 84
    .restart local v1    # "intent":Landroid/content/Intent;
    :pswitch_0
    const-string v3, "CERT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 95
    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    const/4 v2, 0x1

    goto :goto_0

    .line 88
    :pswitch_1
    const-string v3, "PKCS12"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 97
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "AndroidNetworkLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not store crypto file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static storeKeyPair(Landroid/content/Context;[B[B)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "publicKey"    # [B
    .param p2, "privateKey"    # [B
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Landroid/security/KeyChain;->createInstallIntent()Landroid/content/Intent;

    move-result-object v1

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "PKEY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 52
    const-string v2, "KEY"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 53
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v2, 0x1

    .line 59
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AndroidNetworkLibrary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not store key pair: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Lorg/chromium/net/AndroidCertVerifyResult;
    .locals 3
    .param p0, "certChain"    # [[B
    .param p1, "authType"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 153
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/chromium/net/X509Util;->verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Lorg/chromium/net/AndroidCertVerifyResult;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 157
    :goto_0
    return-object v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/security/KeyStoreException;
    new-instance v1, Lorg/chromium/net/AndroidCertVerifyResult;

    invoke-direct {v1, v2}, Lorg/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    goto :goto_0

    .line 156
    .end local v0    # "e":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 157
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/chromium/net/AndroidCertVerifyResult;

    invoke-direct {v1, v2}, Lorg/chromium/net/AndroidCertVerifyResult;-><init>(I)V

    goto :goto_0
.end method
